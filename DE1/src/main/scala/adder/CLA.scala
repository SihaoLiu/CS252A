package adder

import DEUtil.DEUtil.moveRenameFile
import chisel3._
import component.{CLG, GPA1, StdAddIO_GA}

class CLA(data_width : Int) extends Module{

  val io = IO(new StdAddIO_GA(data_width))

  // GPA chain
  val gpa_chain = for(idx <- 0 until data_width) yield{
    val gpa = Module(new GPA1).io
    gpa.x := io.x(idx)
    gpa.y := io.y(idx)
    gpa
  }

  // CLG
  val CLG = Module(new CLG(data_width)).io
  CLG.g := VecInit(gpa_chain.map(_.g)).asUInt()
  CLG.a := VecInit(gpa_chain.map(_.a)).asUInt()
  CLG.cin := io.cin

  // Sum
  val s_bit : Seq[Bool] = for(idx <- 0 until data_width)yield{
    val p = gpa_chain(idx).p
    if(idx == 0){
      io.cin ^ p
    }else{
      CLG.c(idx - 1) ^ p
    }
  }
  io.s := VecInit(s_bit).asUInt()

  // C out
  io.cout := CLG.c(data_width - 1)

  // G, A
  io.G := CLG.G
  io.A := CLG.A
}

object gen_CLA extends App{
  val dws = List(8,16,32,64)
  private def gen(dw : Int) = {
    chisel3.Driver.execute(args,()=>{
      val module = new CLA(dw)
      module
    })
  }
  dws.map(gen _)
}