package DE2.adder
import DE1.component.HA1
import chisel3._
import chisel3.util._
import DE2.util.MultUtil._
class Adder_2to2(bit_width : Int) extends Module{

  val io = IO(new Bundle {
    // Input
    val x = Input(UInt(bit_width.W))
    val y = Input(UInt(bit_width.W))
    // Output
    val s = Output(UInt((bit_width).W))
    val c = Output(UInt((bit_width).W))
  })
  val ha_chain = for(idx <- 0 until bit_width) yield {
    val ha = Module(new HA1).io
    ha.x := io.x(idx)
    ha.y := io.y(idx)
    ha
  }
  io.s := VecInit(ha_chain.map(_.s)).asUInt()
  io.c := VecInit(ha_chain.map(_.cout)).asUInt()
}
