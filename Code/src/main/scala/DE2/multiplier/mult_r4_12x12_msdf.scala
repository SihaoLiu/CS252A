package DE2.multiplier

import DE1.adder.CarrySelectAdder
import DE2.adder._
import chisel3._
import chisel3.util._
import DE2.util.MultUtil._

/*

-----------------------------------
Add[4:2] - 18 bits
 XX XXXX XXXX XXXX
    XXXX XXXX XXXX XX
      XX XXXX XXXX XXXX
         XXXX XXXX XXXX XX

Add[4:2] - 22 bits
    SSSS SSSS SSSS SSSS SS
  C CCCC CCCC CCCC CCCC C
           XX XXXX XXXX XXXX
              XXXX XXXX XXXX XX

Add[3:2] - 24 bits
    SSSS SSSS SSSS SSSS SSSS SS
    CCCC CCCC CCCC CCCC CCCC C
                XX XXXX XXXX XXXX

CSA - 24 bits
	  SSSS SSSS SSSS SSSS SSSS SSSS
  C CCCC CCCC CCCC CCCC CCCC CCC

Result - 24 bits
	  SSSS SSSS SSSS SSSS SSSS SSSS

*/

class mult_r4_12x12_msdf extends Module{

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
    val mg = get_multiple(booth, io.y)
    mg
  }

  // First Level
  val Add_1st_4to2 = Module(new Adder_4to2(18)).io
  Add_1st_4to2.z := multiples(6) << 6
  Add_1st_4to2.y := multiples(5) << 4
  Add_1st_4to2.x := Cat(Fill(2, multiples(4)(13)), multiples(4) << 2)
  Add_1st_4to2.w := Cat(Fill(4, multiples(3)(13)), multiples(3))
  val sum1 : UInt = Add_1st_4to2.s
  val cout1 : UInt = Add_1st_4to2.c

  // Second Level
  val Add_2nd_4to2 = Module(new Adder_4to2(22)).io
  Add_2nd_4to2.z := sum1 << 4
  Add_2nd_4to2.y := cout1 << 5
  Add_2nd_4to2.x := Cat(Fill(6, multiples(2)(13)), multiples(2) << 2)
  Add_2nd_4to2.w := Cat(Fill(8, multiples(1)(13)), multiples(1))
  val sum2 : UInt = Add_2nd_4to2.s
  val cout2 : UInt = Add_2nd_4to2.c


  // Third Level
  val Add_3rd_3to2 = Module(new Adder_3to2(24)).io
  Add_3rd_3to2.x := sum2 << 2
  Add_3rd_3to2.y := cout2 << 3
  Add_3rd_3to2.z := Cat(Fill(10, multiples(0)(13)), multiples(0))
  val sum3 = Add_3rd_3to2.s
  val cout3 = Add_3rd_3to2.c

  // Last Level
  val Add_last = Module(new CarrySelectAdder(24, 4)).io
  Add_last.cin := 0.U(1.W)
  Add_last.x := sum3
  Add_last.y := cout3 << 1
  io.p := Add_last.s
}
