package DE2.adder

import DE1.component.FA1
import chisel3._
import chisel3.util._
import DE2.util.MultUtil._


class Adder_3to2(bit_width : Int) extends Module{

  suggestName(s"CSA_3to2_width_${bit_width}")

  val io = IO(new Bundle {
    // Input
    val x = Input(UInt(bit_width.W))
    val y = Input(UInt(bit_width.W))
    val z = Input(UInt(bit_width.W))
    // Output
    val s = Output(UInt(bit_width.W))
    val c = Output(UInt(bit_width.W))
  })

  val fa_chain = for(idx <- 0 until bit_width) yield {
    val fa = Module(new FA1).io
    fa.cin := io.x(idx)
    fa.x := io.y(idx)
    fa.y := io.z(idx)
    fa
  }

  io.s := VecInit(fa_chain.map(_.s)).asUInt()
  io.c := VecInit(fa_chain.map(_.cout)).asUInt()
}
