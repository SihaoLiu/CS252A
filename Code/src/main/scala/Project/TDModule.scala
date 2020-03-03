package Project

import chisel3._
import chisel3.util._

class TDModule(radix:Int, precision:Int) extends Module{
  val digit_bit = log2Ceil(2 * radix - 1)
  val num_bit = precision * digit_bit
  val zero = 0.U(num_bit.W)
  val io = IO(new Bundle{
    val lower = Input(UInt(num_bit.W))
    val upper = Input(UInt(num_bit.W))
    val b_init = Input(UInt(num_bit.W))

    val lower_d = Input(SInt(digit_bit.W))
    val upper_d = Input(SInt(digit_bit.W))
    val output_d = Output(SInt(digit_bit.W))
  })

  // Initial value of W
  val w = RegInit(io.b_init)
  val d = RegInit(0.U(digit_bit.W))
  val dx1 = (d << ((precision - 1) * digit_bit)).asUInt()

  // Generate the multiple for lower and upper value
  val lower_multiples_lut : Seq[(SInt, UInt)] =
    for(m <- (-radix + 1) until radix ) yield {
      (m.S(digit_bit.W), (io.lower * m.S(digit_bit.W)).apply(num_bit - 1, 0))
    }
  val lower_m : UInt = MuxLookup(io.lower_d, 0.U(num_bit.W) , lower_multiples_lut)
  val upper_multiples_lut : Seq[(SInt, UInt)] =
    for(m <- (-radix + 1) until radix ) yield {
      (m.S(digit_bit.W), (io.upper * m.S(digit_bit.W)).apply(num_bit - 1, 0))
    }
  val upper_m : UInt = MuxLookup(io.upper_d, 0.U(num_bit.W), upper_multiples_lut)

  // Generate next w
  val nxt_w = WireInit(io.b_init)
  nxt_w := w - lower_m - upper_m - dx1
  w := nxt_w
  d := (nxt_w + (1 << ((precision - 2) * digit_bit)).asUInt(num_bit.W))
    .apply(num_bit - 1, num_bit - digit_bit + 1)
  io.output_d := d
}
