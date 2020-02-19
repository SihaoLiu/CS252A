package DE2.util

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

  def get_multiple(y : UInt, x : UInt) : UInt = {
    val neg : UInt = Cat(1.U(1.W), ~x) + 1.U
    require(x.getWidth == 12)
    val muxLookup : Seq[(UInt, UInt)] =
      Seq(
        (1.U(3.W), Cat(0.U(2.W),x)),
        (2.U(3.W), Cat(0.U(1.W), x, 0.U(1.W))),
        (5.U(3.W), Cat(neg(12), neg)),
        (6.U(3.W), Cat(neg, 0.U(1.W)))
      )
    MuxLookup(y, 0.U, muxLookup)
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
