package adder

import scala.math._
import AdderTestUtil.AdderTestUtil._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}
import scala.util.Random._
import scala.collection.mutable


object test_adder extends App{

  val data_width : Int = 64
  val group_width : Int = 8

  val testResult : Boolean= Driver.execute(args,() => new CLA_2level(data_width, group_width)){
    dut => new PeekPokeTester[CLA_2level](dut) {
      for(cycle <- 0 until 100){
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

        println(s"$x + $y with $cin = $s with $cout, got $s_hw with $cout_hw")

        expect(dut.io.s, s)
        expect(dut.io.cout, cout)
      }
    }
  }
  assert(testResult)
}