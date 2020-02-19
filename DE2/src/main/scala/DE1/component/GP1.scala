package DE1.component

import chisel3._
import chisel3.util._

class GP1 extends Module{
  val io = IO(new Bundle{
    // Input
    val x = Input(Bool())
    val y = Input(Bool())
    // Output
    val g = Output(Bool())
    val p = Output(Bool())
  })

  io.g := io.x & io.y
  io.p := io.x ^ io.y

}
