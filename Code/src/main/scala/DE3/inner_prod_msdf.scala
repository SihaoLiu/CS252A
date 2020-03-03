package DE3

import DE1.adder.CarrySelectAdder
import DE2.adder._
import DE2.multiplier.mult_r4_12x12_msdf
import chisel3._

class inner_prod_msdf extends Module{
  val io = IO(new Bundle{
    val Xs = Vec(3, Input(UInt(12.W)))
    val Ys = Vec(3, Input(UInt(12.W)))
    val P = Output(UInt(24.W))
  })

  val Ps = for(idx <- 0 until 3) yield {
    val mult = Module(new mult_r4_12x12_msdf).io
    mult.x := io.Xs(idx)
    mult.y := io.Ys(idx)
    mult.p
  }

  // 3:2 Adder
  val adder_3to2 = Module(new Adder_3to2(24)).io
  adder_3to2.x := Ps(0)
  adder_3to2.y := Ps(1)
  adder_3to2.z := Ps(2)

  // CSA
  val csa = Module(new CarrySelectAdder(24, 4)).io
  csa.cin := 0.U(1.W)
  csa.x := adder_3to2.s
  csa.y := adder_3to2.c << 1
  io.P := csa.s
}
