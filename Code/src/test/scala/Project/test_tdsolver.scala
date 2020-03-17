package Project

import chisel3.iotesters._
import DE1.AdderTestUtil.AdderTestUtil._
import scala.math.BigInt

object test_tdsolver  extends App{

  val precision : Int = 6
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
            val upper : BigInt = BigInt(precision - 2,scala.util.Random)
            val str_upper = fixLength(upper.toString(2), precision)
            val real_upper : Double = sign_prec2double(str_upper)
            println(s"upper($idx) = $real_upper, " + str_upper + s", d\'${upper}")
            poke(dut.io.upper_As(idx),upper)

            // Lower
            val lower : BigInt = BigInt(precision - 2,scala.util.Random)
            val str_lower = fixLength(lower.toString(2), precision)
            val real_lower : Double = sign_prec2double(str_lower)
            println(s"lower(${idx + 1}) = $real_lower, b\'" + str_lower + s", d\'${lower}")
            poke(dut.io.lower_As(idx),lower)
          }
          /*
          val temp_b : BigInt = {
            if(idx == 0) 509 else 495
          }
          */
          val temp_b : BigInt = BigInt(precision * 2 - 4,scala.util.Random)
          val str_b : String = "011111" + fixLength(temp_b.toString(2), precision * 2 - 6)
          val b = BigInt(str_b,2)
          val real_b : Double = num_bit2double(str_b, 1.0, 0.0)
          println(s"b($idx) = $real_b, b\'" + str_b + s", d\'${b}")
          poke(dut.io.Bs(idx),b)
        }

        step(precision)
        for(idx <- 0 until size){
          val Yi : BigInt = peek(dut.io.Ys(idx))
          val str_Yi : String = fixLength(Yi.toString(2), precision * 2)
          val real_Yi : Double = num_bit2double(str_Yi, 1.0, 0.0)
          println(s"Y($idx) = $real_Yi, b\'" + str_Yi + s", d\'${Yi}")
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

  def invert_str(num : String, flip : String) : String = {
    num match {
      case "" => flip
      case _ =>{
        val head_char = num(0)
        head_char match {
          case '1' => invert_str(num.substring(1), flip + "0")
          case '0' =>invert_str(num.substring(1), flip + "1")
        }
      }
    }
  }

  def sign_prec2double(num:String) : Double = {
    val body = num.substring(1)
    num(0) match {
      case '0' => prec2double(body, 1.0, 0.0)
      case '1' =>{
        val inv_str = invert_str(num, "")
        val inv_bigint : BigInt = BigInt(inv_str, 2) + 1
        val unsign_body : String = fixLength(inv_bigint.toString(2), precision - 1)
        0.0 - prec2double(unsign_body , 1.0, 0.0)
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
