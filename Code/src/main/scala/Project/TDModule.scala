package Project

import chisel3._
import chisel3.util._

class TDModule(precision:Int) extends Module{
  val radix : Int = 2
  val digit_bit = 2
  val num_bit : Int = precision * digit_bit
  val zero : UInt = 0.U(num_bit.W)

  val io = IO(new Bundle{
    val lower_a = Input(UInt(precision.W))
    val upper_a = Input(UInt(precision.W))

    val init_b = Input(UInt(num_bit.W))

    val lower_d = Input(UInt(digit_bit.W))
    val upper_d = Input(UInt(digit_bit.W))

    val output_d = Output(UInt(digit_bit.W))
  })

  // Initial value of W
  val w = RegInit(io.init_b)
  val d = RegInit(0.U(digit_bit.W))
  val dx1 = (d << ((precision - 1) * digit_bit)).asUInt()



  // Generate the multiple for lower and upper value
  val lower_multiples_lut : Seq[(SInt, UInt)] =
    for(m <- (-radix + 1) until radix ) yield {
      (m.S(digit_bit.W), (io.lower_a * m.S(digit_bit.W)).apply(num_bit - 1, 0))
    }
  val lower_m : UInt = MuxLookup(io.lower_d, 0.U(num_bit.W) , lower_multiples_lut)
  val upper_multiples_lut : Seq[(SInt, UInt)] =
    for(m <- (-radix + 1) until radix ) yield {
      (m.S(digit_bit.W), (io.upper_a * m.S(digit_bit.W)).apply(num_bit - 1, 0))
    }
  val upper_m : UInt = MuxLookup(io.upper_d, 0.U(num_bit.W), upper_multiples_lut)

  // Generate next w
  val nxt_w = WireInit(io.init_b)
  nxt_w := w - lower_m - upper_m - dx1
  w := nxt_w
  d := (nxt_w + (1 << ((precision - 2) * digit_bit)).asUInt(num_bit.W))
    .apply(num_bit - 1, num_bit - digit_bit + 1)
  io.output_d := d


  def get_multiple(m1 : UInt, m2 : UInt) : UInt = {
    require(m1.getWidth == num_bit)
    require(m2.getWidth == 2)

  }
}
