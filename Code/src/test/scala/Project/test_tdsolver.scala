package Project

import chisel3.iotesters._
import DE1.AdderTestUtil.AdderTestUtil._
import scala.math.BigInt

object test_tdsolver  extends App{

  val precision : Int = 20
  val size : Int = 20
  val repeat_time = 1

  val testResult : Boolean= Driver.execute(
    args,() => new TDSolver(precision, size))
  {
    dut => new PeekPokeTester(dut) {

      for(_ <- 0 until repeat_time){

        val A_matrix : Array[Array[Double]] = Array.fill(size, size)(0.0)
        val y_vector : Array[Double] = Array.fill(size)(0.0)
        val b_vector : Array[Double] = Array.fill(size)(0.0)
        for(row <- 0 until size)
          A_matrix(row)(row) = 1.0

        for(idx <- 0 until size){
          if(idx < size - 1){
            // Upper
            val (upper, real_upper, str_upper) = get_alpha
            println(s"A($idx)(${idx + 1}) = $real_upper, " + str_upper + s", d\'${upper}")
            A_matrix(idx)(idx + 1) = real_upper
            poke(dut.io.upper_As(idx),upper)

            // Lower
            val (lower, real_lower, str_lower) = get_alpha
            println(s"A(${idx + 1})($idx) = $real_lower, b\'" + str_lower + s", d\'${lower}")
            A_matrix(idx + 1)(idx) = real_lower
            poke(dut.io.lower_As(idx),lower)
          }

          val (b , real_b, str_b ) = get_b
          println(s"b($idx) = $real_b, b\'" + str_b + s", d\'$b")
          b_vector(idx) = real_b
          poke(dut.io.Bs(idx),b)
        }

        step(precision)
        for(idx <- 0 until size){
          val Yi : BigInt = peek(dut.io.Ys(idx))
          val str_Yi : String = fixLength(Yi.toString(2), precision * 2)
          val real_Yi : Double = num_bit2double(str_Yi, 1.0, 0.0)
          y_vector(idx) = real_Yi
          println(s"Y($idx) = $real_Yi, b\'" + str_Yi + s", d\'${Yi}")
        }
        println("-------- Comparision and Error --------")
        var max_abs_error = 0.0
        var sum_abs_error = 0.0
        for(row <- 0 until size){
          var sum : Double = 0.0
          for (col <- 0 until size){
            //println(s"${y_vector(row)} * ${A_matrix(row)(col)}")
            sum += y_vector(col) * A_matrix(row)(col)
          }
          println(s"b($row) = ${b_vector(row)}, got $sum")
          val abs_error = math.abs(sum - b_vector(row))
          if(abs_error > max_abs_error)
            max_abs_error = abs_error
          sum_abs_error += abs_error
        }
        println(s"max error = $max_abs_error, average error = ${sum_abs_error / size}")

        step(2)
        println("---------------------------------------")
        reset()
      }


    }
  }
  assert(testResult)

  def get_alpha : (BigInt, Double, String) = {
    val alpha : BigInt = BigInt(precision, scala.util.Random)
    val str_alpha = fixLength(alpha.toString(2), precision)
    val real_alpha : Double = sign_prec2double(str_alpha)
    if(math.abs(real_alpha) < 1.0 / size) {
      (alpha, real_alpha, str_alpha)
    } else {
      get_alpha
    }
  }

  def get_b : (BigInt, Double, String) = {
    val temp_b : BigInt = BigInt(precision * 2 - 4,scala.util.Random)
    val str_b : String = "1010" + fixLength(temp_b.toString(2), precision * 2 - 4)
    val b = BigInt(str_b,2)
    val real_b : Double = num_bit2double(str_b.substring(2), 1.0, 0.0)
    if(math.abs(real_b) < 1.0 / size)
      (b, real_b, str_b)
    else
      get_b
  }

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
