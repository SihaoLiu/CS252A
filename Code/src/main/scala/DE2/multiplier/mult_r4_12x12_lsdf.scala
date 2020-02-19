package DE2.multiplier

import DE1.adder.CarrySelectAdder
import DE2.adder._
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
    val booth = recode(extend_x(idx + 2, idx))
    //printf(p"original = ${extend_x(idx + 2, idx)}, original booth = $booth, booth $idx = ${booth.asSInt()}\n")
    val mg = get_multiple(booth, io.y)
    //printf(p"original y = ${io.y}, booth = $booth, signed y = ${mg.asSInt()}\n")
    mg
  }

  // First Level
  val Add_1st_4to2 = Module(new Adder_4to2(20)).io
  Add_1st_4to2.w := Cat(Fill(6, multiples(0)(13)), multiples(0))
  Add_1st_4to2.x := Cat(Fill(4, multiples(1)(13)), multiples(1) << 2)
  Add_1st_4to2.y := Cat(Fill(2, multiples(2)(13)), multiples(2) << 4)
  Add_1st_4to2.z := (multiples(3) << 6).asUInt()
  val sum1 : UInt = Add_1st_4to2.s
  val cout1 : UInt = Cat(Add_1st_4to2.c, 0.U(1.W))

  // Second Level
  val Add_2nd_4to2 = Module(new Adder_4to2(24)).io
  Add_2nd_4to2.w := Cat(Fill(4, sum1(19)), sum1)
  Add_2nd_4to2.x := Cat(Fill(3, cout1(20)), cout1)
  Add_2nd_4to2.y := Cat(Fill(2, multiples(4)(13)), multiples(4) << 8)
  Add_2nd_4to2.z := (multiples(5) << 10).asUInt()
  val sum2 : UInt = Add_2nd_4to2.s
  val cout2 : UInt = Cat(Add_2nd_4to2.c, 0.U(1.W))


  // Third Level
  val Add_3rd_3to2 = Module(new Adder_3to2(24)).io
  Add_3rd_3to2.x := sum2
  Add_3rd_3to2.y := cout2
  Add_3rd_3to2.z := Cat(multiples(6), 0.U(12.W))
  val sum3 = Add_3rd_3to2.s
  val cout3 = Add_3rd_3to2.c

  // Last Level
  val Add_last = Module(new CarrySelectAdder(24, 4)).io
  Add_last.cin := 0.U(1.W)
  Add_last.x := sum3
  Add_last.y := Cat(cout3, 0.U(1.W))
  io.p := Add_last.s
}

