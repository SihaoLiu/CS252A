package DE2.multiplier

import DE1.adder.CarrySelectAdder
import DE2.adder._
import chisel3._
import chisel3.util._

class mult_r2_vand_12x12 extends Module{
  val io = IO(new Bundle{
    val x = Input(UInt(12.W))
    val y = Input(UInt(12.W))
    val p = Output(UInt(24.W))
  })

  // Start Adder
  val start_adder = Module(new Adder_2to2(13)).io
  start_adder.x := Cat(0.U(1.W), io.y & Fill(12, io.x(0)))
  start_adder.y := Cat(io.y & Fill(12, io.x(1)), 0.U(1.W))

  // Sequence 3 to 2 Adder
  val sum_carry = for(idx <- 0 until 10) yield {
    val sc = Module(new Adder_3to2(13)).io
    sc.x := Cat(io.y & Fill(12, io.x(idx + 2)), 0.U(1.W))
    sc
  }

  // Connect Sequentially
  for(idx <- 0 until 10) yield {
    val prev_sc = {
      if(idx == 0){
        start_adder
      }else{
        sum_carry(idx - 1)
      }
    }
    val sc = sum_carry(idx)
    sc.y := Cat(0.U(1.W), prev_sc.s(12,1))
    sc.z := prev_sc.c
  }

  // Half Prod
  val prod_half = VecInit(start_adder.s(0).asBool() +: sum_carry.map(_.s(0).asBool())).asUInt()

  // Last Level
  val Add_last = Module(new CarrySelectAdder(13, 13)).io
  Add_last.cin := 0.U(1.W)
  Add_last.x := Cat(0.U(1.W), sum_carry.last.s(12,1))
  Add_last.y := sum_carry.last.c
  io.p := Cat(Add_last.s, prod_half)
}
