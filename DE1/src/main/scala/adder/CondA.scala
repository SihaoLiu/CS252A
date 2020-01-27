package adder

import chisel3._
import component.{FA1, HA1, StdAddIO}

class CondA(data_width : Int) extends Module{
  val io = IO(new Bundle{
    // Input
    val x : UInt = Input(UInt(data_width.W))
    val y : UInt = Input(UInt(data_width.W))
    // Output
    val s0 : UInt = Output(UInt(data_width.W))
    val s1 : UInt = Output(UInt(data_width.W))
    val c0 : Bool = Output(Bool())
    val c1 : Bool = Output(Bool())
  })

  // FA (c0, s0)
  // x, y
  val c0 : Bool = Wire(Bool())
  val FAs = for(bit_idx <- 0 until data_width) yield {
    val fa = Module(new FA1).io
    fa.x := io.x(bit_idx)
    fa.y := io.y(bit_idx)
    if(bit_idx == 0){
      fa.cin := false.B
    }
    if(bit_idx== data_width - 1){
      c0 := fa.cout
    }
    fa
  }
  // s0
  val s0 = VecInit(FAs.map(_.s))
  io.s0 := s0.asUInt()
  // c0
  io.c0 := c0
  for(bit_idx <- 1 until data_width){
    FAs(bit_idx).cin := FAs(bit_idx - 1).cout
  }

  // HA (c1, s1)
  // x, y
  val HAs = for(bit_idx <- 1 until data_width) yield {
    val ha = Module(new HA1).io
    ha.x := s0(bit_idx)
    if(bit_idx == 1){
      ha.y := s0(0)
    }
    if(bit_idx == data_width - 1){
      io.c1 := ha.cout | c0
    }
    ha
  }
  // s1
  val s1 = VecInit(!s0(0) +: HAs.map(_.s))
  io.s1 := s1.asUInt()
  // c1
  for(bit_idx <- 2 until data_width){
    HAs(bit_idx - 1).y := HAs(bit_idx - 2).cout
  }
  //printf(p"Internal S0 = ${s0.asUInt()}, S1 = ${s1.asUInt()}, C0 = ${io.c0}, C1 = ${io.c1}\n")
}

class CondAdder(data_width : Int) extends Module{
  val io = IO(new StdAddIO(data_width))

  val cond_add = Module(new CondA(data_width)).io

  cond_add.x := io.x
  cond_add.y := io.y

  io.s := Mux(io.cin, cond_add.s1, cond_add.s0)
  io.cout := Mux(io.cin, cond_add.c1, cond_add.c0)
  //printf(p"S0 = ${cond_add.s0}, S1 = ${cond_add.s1}, C0 = ${cond_add.c0}, C1 = ${cond_add.c1}\n")
  //printf(p"S0 width = ${cond_add.s0.getWidth}, S1 width = ${cond_add.s1.getWidth}\n")
}

import DEUtil.DEUtil.moveRenameFile

object gen_CondAdder extends App{

  def gen(dw : Int) = {
    chisel3.Driver.execute(args,()=>{new CondAdder(dw)})
  }

  val data_widths = List(16,32,64)
  if(true){
    for(dw <- data_widths){
      println(s"Gen dw = $dw")
      gen(dw)
      moveRenameFile("CondAdder.v", "CondAdder_" + dw + ".v")
    }
  }else{
    gen(64)
  }

}