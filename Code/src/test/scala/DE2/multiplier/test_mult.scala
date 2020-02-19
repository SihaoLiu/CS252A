package DE2.multiplier

import scala.math._
import DE1.AdderTestUtil.AdderTestUtil._
import chisel3.util._
import chisel3.iotesters._
import scala.util.Random._
import scala.collection.mutable

object test_mult extends App{

  val testResult : Boolean= Driver.execute(
    args,() => new mult_r2_vand_12x12)
  {
    dut => new PeekPokeTester(dut) {
      for(_ <- 0 until 10000){
        val x : BigInt = BigInt(12,scala.util.Random)
        val y : BigInt = BigInt(12,scala.util.Random)

        val temp_s : BigInt = x * y
        val s : BigInt = temp_s.B2B(24)

        poke(dut.io.x, x)
        poke(dut.io.y, y)

        step(1)

        val s_hw = peek(dut.io.p)

        if(!args.contains("vcs"))
          println(s"$x * " +
            s"$y = " +
            s"$s, " +
            s"got $s_hw")

        if(false) println(s"b\'${x.toString(2)} * " +
          s"b\'${y.toString(2)} = " +
          s"b\'${s.toString(2)}, " +
          s"got b\'${s_hw.toString(2)}")

        expect(dut.io.p, s)
      }
    }
  }
  assert(testResult)
}