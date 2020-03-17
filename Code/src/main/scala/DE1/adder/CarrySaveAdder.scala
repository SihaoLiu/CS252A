package DE1.adder

import DE1.component.FA1
import chisel3._
import chisel3.util._

class CarrySaveAdder(precision: Int) extends Module{

  val num_bits : Int = precision * 2
  val io = IO(new Bundle{
    val x : UInt = Input(UInt(num_bits.W))
    val y : UInt = Input(UInt(num_bits.W))

    val cs : UInt = Output(UInt((num_bits+2).W))
    val s : UInt = Output(UInt((precision+1).W))
    val c : UInt = Output(UInt((precision+1).W))
  })

  val fa_chain1 = for(idx <- 0 until precision) yield {
    val fa = Module(new FA1).io
    fa.x := io.x(idx * 2)
    fa.y := io.x(idx * 2 + 1)
    fa.cin := io.y(idx * 2)
    fa
  }

  val fa_chain2 = for(idx <- 0 until precision) yield {
    val fa = Module(new FA1).io
    fa.x := io.y(idx * 2 + 1)
    fa.y := fa_chain1(idx).s
    fa.cin := {
      if(idx > 0)
        fa_chain1(idx - 1).cout
      else
        true.B}
    fa
  }

  val s : UInt = VecInit(fa_chain2.map(_.s) :+ fa_chain1.last.cout).asUInt
  val c : UInt = VecInit(false.B +: fa_chain2.map(_.cout)).asUInt()
  val cs : UInt = (for(idx <- 0 to precision) yield {
    Cat(c(idx), s(idx))
  }).reverse.reduce(Cat(_,_))

  io.s := s
  io.c := c
  io.cs := cs

}
