package DE3.inner_prod

import DE3._
import DE1.AdderTestUtil.AdderTestUtil._
import chisel3.iotesters._
import scala.math.BigInt

object test_inner_prod  extends App{
  val testResult : Boolean= Driver.execute(
    args,() => new inner_prod_lsdf)
  {
    dut => new PeekPokeTester(dut) {
      for(_ <- 0 until 1000){

        val Ps = for(idx <- 0 until 3) yield {
          val x : BigInt = BigInt(12,scala.util.Random)
          val y : BigInt = BigInt(12,scala.util.Random)
          poke(dut.io.Xs(idx), x)
          poke(dut.io.Ys(idx), y)
          x * y
        }

        val s : BigInt = Ps.reduce(_ + _).B2B(24)

        step(1)

        val s_hw = peek(dut.io.P)

        if(!args.contains("vcs")) {

          println(
            s"$s, " +
            s"got $s_hw")
        }

        expect(dut.io.P, s)
      }
    }
  }
  assert(testResult)
}
