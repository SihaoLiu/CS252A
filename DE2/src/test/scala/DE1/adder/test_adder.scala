package DE1.adder

import scala.math._
import DE1.AdderTestUtil.AdderTestUtil._
import chisel3.util._
import chisel3.iotesters._
import scala.util.Random._
import scala.collection.mutable


object test_adder extends App{

  val data_width : Int = 64
  val group_width : Int = 8

  val testResult : Boolean= Driver.execute(
    args,() => new CondSumAdder(data_width, group_width, true))
  {
    dut => new PeekPokeTester(dut) {
      for(cycle <- 0 until 1000){
        val x : BigInt = BigInt(data_width, scala.util.Random)
        val y : BigInt = BigInt(data_width, scala.util.Random)
        val cin : BigInt = BigInt(1, scala.util.Random)

        val temp_s : BigInt = x + y + cin
        val s : BigInt = temp_s.B2B(data_width)
        val cout : BigInt = temp_s.testBit(data_width)

        poke(dut.io.x, x)
        poke(dut.io.y, y)
        poke(dut.io.cin, cin)

        step(1)

        val s_hw = peek(dut.io.s)
        val cout_hw = peek(dut.io.cout)

        if(!args.contains("vcs"))
          println(s"$x + " +
          s"$y with " +
          s"$cin = " +
          s"$s with " +
          s"$cout, " +
          s"got $s_hw with " +
          s"$cout_hw")

        if(false) println(s"b\'${x.toString(2)} + " +
          s"b\'${y.toString(2)} with " +
          s"b\'${cin.toString(2)} = " +
          s"b\'${s.toString(2)} with " +
          s"b\'${cout.toString(2)}, " +
          s"got b\'${s_hw.toString(2)} with " +
          s"b\'${cout_hw.toString(2)}")

        expect(dut.io.s, s)
        expect(dut.io.cout, cout)
      }
    }
  }
  assert(testResult)
}

object adder_repl extends App {
  Driver.executeFirrtlRepl(args, ()=> new CLA_2level(64, 8))
}