package Project

import chisel3._
import chisel3.util._
import Util._

class TDSolver(precision:Int, size:Int) extends Module {
  // Calculate how many bit need to represent a digit
  // using a redundant representation
  val digit_bit = 2
  val num_bit = precision * digit_bit
  val zero = 0.U(precision.W)

  // Create the IO
  val io = IO(new Bundle{
    val upper_As = Vec(size - 1, Input(UInt(precision.W)))
    val lower_As = Vec(size - 1, Input(UInt(precision.W)))
    val Bs = Vec(size, Input(UInt(num_bit.W)))

    val Ys = Vec(size, Output(UInt(num_bit.W)))
  })

  // Forming the triple input value of module
  val tri = (zero +: io.lower_As) zip (io.upper_As :+ zero)

  // Create counter
  val counter : UInt = RegInit(0.U(log2Ceil(precision + 1).W))

  // Create the Module
  val modules = for(idx <- 0 until size) yield {
    val (lower, upper) = tri(idx)
    val m = Module(new TDModule(precision, idx)).io
    m.lower_a := lower
    m.upper_a := upper
    m.init_b := io.Bs(idx)
    m.init := counter === 0.U
    m
  }

  // Store Output Digits
  val output_ds = Seq.fill(size)(
    RegInit(VecInit(Seq.fill(precision)(1.U(digit_bit.W))))
  )

  // Connect d
  for(idx <- 0 until size){
    val m = modules(idx)
    val prev_d = if(idx == 0){
      1.U(digit_bit.W)
    }else{
      modules(idx - 1).output_d
    }
    val nxt_d = if(idx == size - 1){
      1.U(digit_bit.W)
    }else{
      modules(idx + 1).output_d
    }
    m.lower_d := prev_d
    m.upper_d := nxt_d
  }

  // FSM
  when(counter < precision.U){
    for(idx <- 0 until size){
      output_ds(idx)(counter) := modules(idx).output_d
    }
    counter := counter + 1.U
  }

  // Output
  for(idx <- 0 until size){
    io.Ys(idx) := output_ds(idx).reduce(Cat(_, _))
  }

  // debug
  if(true){
    printf(p"counter = $counter\n")
  }


}

object gen_TDSolver extends App {
  chisel3.Driver.execute(args,()=>{
    val module = new TDSolver(20, 5)
    module
  })
}