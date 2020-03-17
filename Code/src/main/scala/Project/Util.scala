package Project

import chisel3._
import chisel3.util._

object Util {
  def get_zero(prec : Int) : UInt = {
    (for(_ <- 0 until prec) yield {
      Cat(true.B, false.B)
    }).reduce(Cat(_, _))
  }
}
