package component

import chisel3._
import chisel3.util._

class CLG(width : Int) extends Module{
  val io = IO(new Bundle{
    // Input
    val g : UInt = Input(UInt(width.W))
    val a : UInt = Input(UInt(width.W))
    val cin : Bool = Input(Bool())
    // Output
    val c : UInt = Output(UInt(width.W))
    val G : Bool = Output(Bool())
    val A : Bool = Output(Bool())
  })
  def calculate_ga(i : Int) : (Bool, Bool) = {
    val gi = io.g(i)
    val ai = io.a(i)
    if(i == 0){
      (gi, ai)
    }else{
      val prev_ga = calculate_ga(i - 1)
      val prev_g = prev_ga._1
      val prev_a = prev_ga._2
      (gi | (prev_g & ai), ai & prev_a)
    }
  }

  // Calcualte GA
  val ga_chain = for(ga_idx <- 0 until width) yield {
    val ga = calculate_ga(ga_idx)
    ga
  }

  // Output C
  val c_bit = for(c_idx <- 0 until width) yield {
    val this_ga = ga_chain(c_idx)
    val this_g = this_ga._1
    val this_a = this_ga._2
    this_g | (this_a & io.cin)
  }
  io.c := VecInit(c_bit).asUInt()

  // Output G, A
  io.G := ga_chain.last._1
  io.A := ga_chain.last._2
}
