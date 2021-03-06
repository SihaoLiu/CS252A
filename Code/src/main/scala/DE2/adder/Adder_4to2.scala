package DE2.adder
import chisel3._
import chisel3.util._
import DE2.util.MultUtil._

class Adder_4to2(bit_width:Int) extends Module{
  suggestName(s"CSA_4to2_width_${bit_width}")

  val io = IO(new Bundle{
    // Input
    val w = Input(UInt(bit_width.W))
    val x = Input(UInt(bit_width.W))
    val y = Input(UInt(bit_width.W))
    val z = Input(UInt(bit_width.W))
    // Output
    val s = Output(UInt((bit_width).W))
    val c = Output(UInt((bit_width).W))
  })

  // Just 2x 3to2 Adder
  val adder_3to2_1st = Module(new Adder_3to2(bit_width)).io
  adder_3to2_1st.x := io.w
  adder_3to2_1st.y := io.x
  adder_3to2_1st.z := io.y

  val adder_3to2_2nd = Module(new Adder_3to2(bit_width)).io
  adder_3to2_2nd.x := adder_3to2_1st.s
  adder_3to2_2nd.y := adder_3to2_1st.c << 1
  adder_3to2_2nd.z := io.z

  io.s := adder_3to2_2nd.s
  io.c := adder_3to2_2nd.c
}
