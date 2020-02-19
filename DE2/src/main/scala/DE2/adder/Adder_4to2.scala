package DE2.adder

import chisel3._
import chisel3.util._
import DE2.util.MultUtil._

class Adder_4to2(bit_width : Int) extends Module{

  suggestName(s"Adder_4to2_width_${bit_width}")

  val io = IO(new Bundle{
    // Input
    val tin = Input(UInt(1.W))
    val w = Input(UInt(bit_width.W))
    val x = Input(UInt(bit_width.W))
    val y = Input(UInt(bit_width.W))
    val z = Input(UInt(bit_width.W))
    // Output
    val s = Output(UInt(bit_width.W))
    val c = Output(UInt(bit_width.W))
    val tout = Output(UInt(1.W))
  })

  // T
  val T_bits : Seq[Bool] = for(idx <- 0 until bit_width) yield {
    majority(io.w(idx), io.x(idx), io.y(idx))
  }
  val T :UInt = VecInit(T_bits :+ io.tin).asUInt()
  io.tout := T(bit_width)

  // S
  val P = (io.w ^ io.x) ^ (io.y ^ io.z)
  io.s := P ^ T(bit_width - 1, 0)

  // C
  io.c := bit_mux(P, T(bit_width - 1, 0), io.z)
}
