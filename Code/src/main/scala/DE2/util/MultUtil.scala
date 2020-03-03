package DE2.util

import DE1.component.HA1
import chisel3._
import chisel3.util._

object MultUtil {
  def recode(y:UInt):UInt = {
    val out1 : Bool = y(2).asBool() & (~y(1)).asBool() & (~y(0)).asBool()
    val out2 : Bool = (~y(2)).asBool() & y(1) & y(0)
    Cat(
      y(2),
      out1 | out2,
      y(1) ^ y(0)
    )
  }
  // Add one by using half adder
  def add_one(num : UInt) : UInt = {
    val width = num.getWidth
    val ha_chain = for(idx <- 1 until width) yield {
      val ha = Module(new HA1).io
      ha.x := num(idx)
      ha
    }
    for(idx <- 0 until width - 1){
      val ha = ha_chain(idx)
      if(idx > 0){
        ha.y := ha_chain(idx - 1).cout
      }else{
        ha.y := num(idx)
      }
    }
    val main_sum = VecInit(ha_chain.map(_.s)).asUInt()
    Cat(main_sum, ~num(0))
  }

  def get_multiple(y : UInt, x : UInt) : UInt = {
    val width = x.getWidth
    val X = Cat(0.U(1.W), x)
    val X2= Cat(x, 0.U(1.W))
    val negX = add_one((~X).asUInt())
    val negX2 = add_one((~X2).asUInt())
    val not_zero_multiplicand : Bool = x.orR()
    val sign = y(2) & not_zero_multiplicand
    require(width == 12)
    val muxLookup : Seq[(UInt, UInt)] =
      Seq(
        (1.U(3.W), Cat(sign, X)),
        (2.U(3.W), Cat(sign, X2)),
        (5.U(3.W), Cat(sign, negX)),
        (6.U(3.W), Cat(sign, negX2))
      )
    MuxLookup(y, 0.U(14.W), muxLookup)
  }

  def majority(i1: Bool , i2: Bool, i3: Bool): Bool = {
    (i1 & i2) | (i2 & i3) | (i1 & i3)
  }

  def bit_mux(sel: UInt, val1:UInt , val2:UInt):UInt = {
    val result = for(idx <- 0 until val1.getWidth) yield {
      Mux(sel(idx), val1(idx), val2(idx))
    }
    VecInit(result).asUInt()
  }

  def CSA_4to2(cin: Bool, tin : Bool,
               op0 : UInt, op1: UInt, op2 : UInt, op3 : UInt)
    :(UInt, UInt, Bool) = {
    // S, Carry Out, T out
    val width : Int = op0.getWidth
    val Ts = for(idx <- 0 until width) yield {
      majority(op0(idx), op1(idx), op2(idx))
    }
    // Generate // Delete G = Xor3
    val G : UInt = (op0 ^ op1) ^ (op2 ^ op3)
    val T : UInt = VecInit(Ts :+ tin).asUInt()

    // Get result
    val Sum : UInt = G ^ T(width - 1, 0)
    val Cout : UInt = Cat(bit_mux(G, T(width - 1, 0), op3), 0.U(1.W))
    val Tout : Bool = T(width)
    require(Sum.getWidth == width)
    require(Cout.getWidth == width + 1)
    (Sum, Cout, Tout)
  }
}
