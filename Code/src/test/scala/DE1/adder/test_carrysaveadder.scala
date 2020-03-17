package DE1.adder

import scala.math._
import DE1.AdderTestUtil.AdderTestUtil._
import chisel3.util._
import chisel3.iotesters._

object test_carrysaveadder extends App {

  val precision : Int = 6

  val testResult : Boolean= Driver.execute(
    args,() => new CarrySaveAdder(precision))
  {
    dut => new PeekPokeTester(dut) {
      for(cycle <- 0 until 100){
        val x : BigInt = BigInt(precision, scala.util.Random)
        val y : BigInt = 0//BigInt(precision, scala.util.Random)

        val isSub : Boolean = if (x >= y)scala.util.Random.nextBoolean() else false

        val sum : BigInt = (if(isSub) x - y else x + y).B2B(precision)

        val ext_x = invert(x, false, precision)
        val ext_y = invert(y, isSub, precision)
        poke(dut.io.x, ext_x)
        poke(dut.io.y, ext_y)

        step(1)

        val s_hw = peek(dut.io.s)
        val c_hw = peek(dut.io.c)
        val sc_hw = peek(dut.io.cs)
        val sum_hw = (s_hw + c_hw + 1).B2B(precision)

        val notation : String = if(isSub) " - " else " + "

        if(!args.contains("vcs"))
          println(s"$x" + notation +
            s"$y = " +
            s"$sum, " +
            s"got $sum_hw")

        println(ext_x.toString(2) + notation + ext_y.toString(2) + " ->" +
          s" s = ${s_hw.toString(2)}, c = ${c_hw.toString(2)}, sc = ${sc_hw.toString(2)}, " +
          s"s + c = " + sum_hw.toString(2))

        assert(sum == sum_hw)
      }
    }
  }
  assert(testResult)

  def invert(num : BigInt, isInvert : Boolean, precision : Int) : BigInt = {
    val sign = if(isInvert) "0" else "1"
    val str = fixLength(num.toString(2), precision)
    val ext_str : String = (for(idx <- 0 until str.length) yield {
      val new_char : String = if(isInvert){
        str(idx).toString match {
          case "1" => "0"
          case "0" => "1"
        }
      }else{
        str(idx).toString
      }
      sign + new_char
    }).reduce(_ + _)
    BigInt(ext_str,2)
  }

}
