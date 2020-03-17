package Project

import chisel3.iotesters._
import DE1.AdderTestUtil.AdderTestUtil._
import scala.math.BigInt

object test_tdsolver  extends App{

  val precision : Int = 5
  val size : Int = 2
  val repeat_time = 1

  val testResult : Boolean= Driver.execute(
    args,() => new TDSolver(precision, size))
  {
    dut => new PeekPokeTester(dut) {

      for(_ <- 0 until repeat_time){
        for(idx <- 0 until size){
          if(idx < size - 1){
            // Upper
            val upper = BigInt(precision - 1,scala.util.Random)
            val str_upper = fixLength(upper.toString(2), precision)
            val real_upper : Double = prec2double(str_upper, 1.0, 0.0)
            println(s"upper($idx) = $real_upper, " + str_upper)
            poke(dut.io.upper_As(idx),upper)

            // Lower
            val lower = BigInt(precision - 1,scala.util.Random)
            val str_lower = fixLength(lower.toString(2), precision)
            val real_lower : Double = prec2double(str_lower, 1.0, 0.0)
            println(s"lower(${idx + 1}) = $real_lower, " + str_lower)
            poke(dut.io.lower_As(idx),lower)
          }

          val temp_b = BigInt(precision * 2 - 2,scala.util.Random)
          val str_b : String = "01" + fixLength(temp_b.toString(2), precision * 2 - 2)
          val b = BigInt(str_b,2)
          val real_b : Double = num_bit2double(str_b, 1.0, 0.0)
          println(s"b($idx) = $real_b, " + str_b)
          poke(dut.io.Bs(idx),b)
        }

        step(precision)
        for(idx <- 0 until size){
          val Yi : BigInt = peek(dut.io.Ys(idx))
          val str_Yi : String = fixLength(Yi.toString(2), precision * 2)
          val real_Yi : Double = num_bit2double(str_Yi, 1.0, 0.0)
          println(s"Y($idx) = $real_Yi, " + str_Yi)
        }

        step(2)
        println("---------------------------------------")
        reset()
      }


    }
  }
  assert(testResult)

  def num_bit2double(num : String, radix : Double, sum : Double) : Double = {
    num match {
      case "" => sum
      case _ => {
        val value : Double = num.substring(0,2) match {
          case "00" => radix * (-1.0)
          case "11" => radix * 1.0
          case _ => 0.0
        }
        num_bit2double(num.substring(2), radix * 0.5, sum + value)
      }
    }
  }

  def prec2double(num : String, radix : Double, sum : Double) : Double = {
    num match {
      case "" => sum
      case _ => {
        val value : Double = num.substring(0,1) match {
          case "1" => radix * 1.0
          case _ => 0.0
        }
        prec2double(num.substring(1), radix * 0.5, sum + value)
      }
    }
  }

}
