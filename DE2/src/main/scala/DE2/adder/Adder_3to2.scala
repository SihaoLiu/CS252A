package DE2.adder

import chisel3._
import chisel3.util._
import DE2.util.MultUtil._


class Adder_3to2(bit_width : Int) extends Module{

  suggestName(s"Adder_3to2_width_${bit_width}")

  val io = IO(new Bundle {
    // Input
    val x = Input(UInt(bit_width.W))
    val y = Input(UInt(bit_width.W))
    val z = Input(UInt(bit_width.W))
    // Output
    val s = Output(UInt(bit_width.W))
    val c = Output(UInt(bit_width.W))
  })

  io.s := io.x ^ io.y ^ io.z
  val c = for(idx <- 0 until bit_width) yield {
    majority(io.x(idx), io.y(idx), io.z(idx))
  }
  io.c := VecInit(c).asUInt()
}
