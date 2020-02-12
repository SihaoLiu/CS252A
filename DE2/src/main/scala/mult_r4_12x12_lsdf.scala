import chisel3._
import chisel3.util._

class mult_r4_12x12_lsdf extends Module{

  val io = IO(new Bundle{
    val x = Input(UInt(12.W))
    val y = Input(UInt(12.W))
    val p = Output(UInt(24.W))
  })

}
