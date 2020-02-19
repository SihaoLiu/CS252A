package DE1.component

import chisel3._
import chisel3.util._

class HA1 extends Module{
  val io = IO(new Bundle{
    // Input
    val x = Input(Bool())
    val y = Input(Bool())
    // Output
    val s = Output(Bool())
    val cout = Output(Bool())
  })

  io.s := io.x ^ io.y
  io.cout := io.x & io.y

}
