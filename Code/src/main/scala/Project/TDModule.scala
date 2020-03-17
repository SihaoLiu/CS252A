package Project

import chisel3._
import chisel3.util._
import Util._

class TDModule(precision:Int) extends Module{
  val radix : Int = 2
  val digit_bit = 2
  val num_bit : Int = precision * digit_bit
  val one : UInt = Cat(1.U(1.W), 0.U((precision - 1).W))
  val zero : UInt = get_zero(precision)
  val half : UInt = Cat(7.U((2 * digit_bit).W), get_zero(precision - 2))

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
  val d = RegInit(1.U(digit_bit.W))
  printf(p"w = $w\n")
  printf(p"d = $d\n")

  // Generate the multiple for lower and upper value
  val lower_ad : UInt = get_multiple(io.lower_a, io.lower_d)
  val upper_ad : UInt = get_multiple(io.upper_a, io.upper_d)
  val this_ad : UInt = get_multiple(one, d)

  // Generate next w
  import DE1.adder.CarrySaveAdder
  val csa1 = Module(new CarrySaveAdder(precision)).io
  csa1.x := w
  csa1.y := lower_ad
  val csa2 = Module(new CarrySaveAdder(precision)).io
  csa2.x := csa1.cs(num_bit - 1, 0)
  csa2.y := upper_ad
  val csa3 = Module(new CarrySaveAdder(precision)).io
  csa3.x := csa2.cs(num_bit - 1, 0)
  csa3.y := this_ad
  val nxt_w : UInt = (csa3.cs << digit_bit).apply(num_bit - 1, 0)
  w := nxt_w

  // SEL
  val csa4 = Module(new CarrySaveAdder(precision)).io
  csa4.x := nxt_w
  csa4.y := half
  val nxt_d : UInt = csa4.cs(num_bit - 1, num_bit - 2)
  d := nxt_d

  io.output_d := d

  def get_multiple(a : UInt, d : UInt) : UInt = {
    require(a.getWidth == precision)
    require(d.getWidth == 2)
    val neg_a : UInt = (for(idx <- 0 until precision) yield {
      Cat(false.B, (~a).apply(idx))
    }).reverse.reduce(Cat(_, _))
    val pos_a : UInt = (for(idx <- 0 until precision) yield {
      Cat(true.B, a(idx))
    }).reverse.reduce(Cat(_, _))
    val lookup : Seq[(UInt, UInt)] = Seq(
      (0.U(digit_bit.W), pos_a),
      (1.U(digit_bit.W), zero),
      (2.U(digit_bit.W), zero),
      (3.U(digit_bit.W), neg_a),
    )
    val m = MuxLookup(d, zero, lookup)
    require(m.getWidth == num_bit)
    m
  }


}
