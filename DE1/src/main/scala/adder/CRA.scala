package adder

import chisel3._
import component.{FA1, StdAddIO_gp}

class CRA(data_width : Int) extends Module{

  suggestName(s"CRA_dw_$data_width")

  val io = IO(new StdAddIO_gp(data_width))

  // Create Full Adder Chain
  val fa_chain = for(bit_idx <- 0 until data_width)yield{
    val fa = Module(new FA1).io
    fa.x := io.x(bit_idx)
    fa.y := io.y(bit_idx)
    fa
  }

  // Connect FA chain
  for(bit_idx <- 1 until data_width){
    fa_chain(bit_idx).cin := fa_chain(bit_idx - 1).cout
  }

  // Connect Cin and Cout
  fa_chain.head.cin := io.cin
  io.cout := fa_chain.last.cout

  // Connect Sum
  io.s := VecInit(fa_chain.map(_.s)).asUInt()

  // Connect G, P
  io.g := VecInit(fa_chain.map(_.g)).asUInt()
  io.p := VecInit(fa_chain.map(_.p)).asUInt()
}

import DEUtil.DEUtil._

object gen_CRA extends App{
  args.foreach(println)

  private def gen(data_width : Int, Args:Array[String]) =
    chisel3.Driver.execute(Args,()=>new CRA(data_width))

  val data_widths = List(8,16,32,64)

  data_widths.foreach(dw=>{
    val Args : Array[String] = args ++ Array("-o", s"CRA_$dw")
    gen(dw, Args)
  })
}