package Project

import chisel3._
import chisel3.util._

class TDSolver(radix:Int, precision:Int, size:Int) extends Module {
  // Calculate how many bit need to represent a digit
  // using a redundant representation
  val digit_bit = log2Ceil(2 * radix - 1)
  val num_bit = precision * digit_bit
  val zero = 0.U(num_bit.W)
  // Create the IO
  val io = IO(new Bundle{
    val upper = Vec(size - 1, Input(UInt(num_bit.W)))
    val lower = Vec(size - 1, Input(UInt(num_bit.W)))
    val b = Vec(size, Input(UInt(num_bit.W)))
    val y = Vec(size, Output(UInt(num_bit.W)))
  })
  // Forming the triple input value of module
  val tri = (zero +: io.lower) zip (io.upper :+ zero)

  // Create the Module
  val modules = for(idx <- 0 until size) yield {
    val (lower, upper) = tri(idx)
    val m = Module(new TDModule(radix, precision)).io
    m.lower := lower
    m.upper := upper
    m.b_init := io.b(idx)
    m
  }

  // Connect d
  for(idx <- 0 until size){
    val m = modules(idx)
    val prev_d = if(idx == 0){
      0.S(digit_bit.W)
    }else{
      modules(idx - 1).output_d
    }
    val nxt_d = if(idx == size - 1){
      0.S(digit_bit.W)
    }else{
      modules(idx + 1).output_d
    }
    m.lower_d := prev_d
    m.upper_d := nxt_d
  }
}
