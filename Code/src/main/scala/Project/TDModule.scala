package Project

import chisel3._
import chisel3.util._
import Util._

class TDModule(precision:Int, index : Int) extends Module{
  val radix : Int = 2
  val digit_bit = 2
  val num_bit : Int = precision * digit_bit
  val one_signed : UInt = Cat(0.U(1.W), 1.U(1.W), 0.U((precision - 2).W))
  val half_signed : UInt = Cat(0.U(2.W), 1.U(1.W), 0.U((precision - 3).W))
  val zero_RBR : UInt = get_zero(precision)
  val half_RBR : UInt = Cat(11.U((2 * digit_bit).W), get_zero(precision - 2))

  val io = IO(new Bundle{
    // a is signed
    val lower_a = Input(UInt(precision.W))
    val upper_a = Input(UInt(precision.W))
    // b is RBR
    val init_b = Input(UInt(num_bit.W))
    val init = Input(Bool())
    // d is RBR digit
    val lower_d = Input(UInt(digit_bit.W))
    val upper_d = Input(UInt(digit_bit.W))
    // d is RBR digit
    val output_d = Output(UInt(digit_bit.W))
  })

  // Initial value of W
  val w = RegInit(io.init_b)
  val d = RegInit(1.U(digit_bit.W))

  // Generate the multiple for lower and upper value
  val lower_ad : UInt = get_multiple(io.lower_a, io.lower_d)
  val upper_ad : UInt = get_multiple(io.upper_a, io.upper_d)
  val this_ad : UInt = get_multiple(one_signed, d)

  // Generate next w
  import DE1.adder.CarrySaveAdder
  val csa1 = Module(new CarrySaveAdder(precision)).io
  csa1.x := Mux(io.init, io.init_b, w)
  csa1.y := lower_ad
  val csa2 = Module(new CarrySaveAdder(precision + 1)).io
  csa2.x := csa1.cs
  csa2.y := Cat(2.U(digit_bit.W), upper_ad)
  val csa3 = Module(new CarrySaveAdder(precision + 2)).io
  csa3.x := csa2.cs
  csa3.y := Cat(10.U((digit_bit * 2).W), this_ad)

  val nxt_w_signed : UInt = Cat(csa3.c +& csa3.s +& 1.U, 0.U(1.W))
    .apply(precision - 1, 0)
  val nxt_w : UInt = get_multiple(nxt_w_signed, 0.U(2.W))
  w := nxt_w

  // SEL
  val sign_nxt_w : Bool = nxt_w_signed(precision - 1)
  val abs_nxt_w : UInt = (~nxt_w_signed).asUInt() + 1.U
  val abs_nxt_w_add_half : UInt = abs_nxt_w + half_signed
  val floor_one : Bool = abs_nxt_w_add_half(precision - 2)
  val lookup : Seq[(UInt, UInt)] = Seq(
    (0.U(digit_bit.W), 2.U(digit_bit.W)), // b'00 -> +0
    (1.U(digit_bit.W), 3.U(digit_bit.W)), // b'01 -> +1
    (2.U(digit_bit.W), 1.U(digit_bit.W)), //b'10 -> -0
    (3.U(digit_bit.W), 0.U(digit_bit.W)), //b'11 -> -1
  )
  val nxt_d : UInt =
    MuxLookup(Cat(sign_nxt_w, floor_one), 1.U(digit_bit.W), lookup)
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
      (1.U(digit_bit.W), zero_RBR),
      (2.U(digit_bit.W), zero_RBR),
      (3.U(digit_bit.W), neg_a),
    )
    val m = MuxLookup(d, zero_RBR, lookup)
    require(m.getWidth == num_bit)
    m
  }

  // debug
  if(false){
    printf(p"idx = ${index}, w = ${Binary(w)}\n")
    printf(p"idx = ${index}, d = ${Binary(d)}\n")
    printf(p"idx = $index, lower_a = ${Binary(io.lower_a)}\n")
    printf(p"idx = $index, lower_d = ${Binary(io.lower_d)}\n")
    printf(p"idx = $index, upper_a = ${Binary(io.upper_a)}\n")
    printf(p"idx = $index, upper_d = ${Binary(io.upper_d)}\n")
    //printf(p"idx = $index, upper_ad = ${Binary(upper_ad)}\n")
    //printf(p"idx = $index, lower_ad = ${Binary(lower_ad)}\n")
    //printf(p"idx = $index, this_ad = ${Binary(this_ad)}\n")
    printf(p"idx = $index, w + lower_ad = ${Binary(csa1.cs)}\n")
    printf(p"idx = $index, .. + upper_ad = ${Binary(csa2.cs)}\n")
    printf(p"idx = $index, .. + this_ad = ${Binary(csa3.cs)}\n")
    printf(p"idx = $index, next_w = ${Binary(nxt_w)}\n")
    printf(p"idx = $index, |next_w| + 1/2 = ${Binary(abs_nxt_w_add_half)}\n")
  }


}
