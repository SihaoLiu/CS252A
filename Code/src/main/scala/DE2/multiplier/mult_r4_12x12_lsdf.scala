package DE2.multiplier

import DE1.adder.CarrySelectAdder
import DE2.adder.{Adder_3to2, Adder_4to2}
import chisel3._
import chisel3.util._
import DE2.util.MultUtil._

class mult_r4_12x12_lsdf extends Module{

  val io = IO(new Bundle{
    val x = Input(UInt(12.W))
    val y = Input(UInt(12.W))
    val p = Output(UInt(24.W))
  })

  // Extend the multiplicand
  val extend_x = Cat(0.U(2.W), io.x, 0.U(1.W))

  // Recode and Generate the Multiples
  val multiples = for(idx <- 0 to 12 by 2) yield {
    get_multiple(recode(extend_x(idx + 2, idx)), io.y)
  }

  // First Level
  val Add_1st_4to2 = Module(new Adder_4to2(20)).io
  Add_1st_4to2.w := Cat(Fill(6, multiples(0)(13)), multiples(0))
  Add_1st_4to2.x := Cat(Fill(4, multiples(1)(13)), multiples(1), 0.U(2.W))
  Add_1st_4to2.y := Cat(Fill(2, multiples(2)(13)), multiples(2), 0.U(4.W))
  Add_1st_4to2.z := Cat(multiples(3), 0.U(6.W))
  Add_1st_4to2.tin := 0.U(1.W)
  val sum1 : UInt = Add_1st_4to2.s
  val cout1 : UInt = Add_1st_4to2.c

  // Second Level
  val Add_2nd_4to2 = Module(new Adder_4to2(24)).io
  Add_2nd_4to2.w := Cat(Fill(4, sum1(19)), sum1)
  Add_2nd_4to2.x := Cat(Fill(3, cout1(19)), cout1, 0.U(1.W))
  Add_2nd_4to2.y := Cat(multiples(4), 0.U(8.W))
  Add_2nd_4to2.z := Cat(multiples(5), 0.U(10.W))
  Add_2nd_4to2.tin := 0.U(1.W)
  val sum2 : UInt = Add_2nd_4to2.s
  val cout2 : UInt = Add_2nd_4to2.c

  // Third Level
  val Add_3rd_3to2 = Module(new Adder_3to2(24)).io
  Add_3rd_3to2.x := sum2
  Add_3rd_3to2.y := Cat(cout2, 0.U(1.W))
  Add_3rd_3to2.z := Cat(multiples(6), 0.U(10.W))
  val sum3 = Add_3rd_3to2.s
  val cout3 = Add_3rd_3to2.c

  // Last Level
  val Add_last = Module(new CarrySelectAdder(24, 4)).io
  Add_last.cin := 0.U(1.W)
  Add_last.x := sum3
  Add_last.y := Cat(cout3, 0.U(1.W))
  io.p := Add_last.s
}
