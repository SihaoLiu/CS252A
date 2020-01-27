package component

import chisel3._
import chisel3.util._

class GPA1 extends Module{
  val io = IO(new Bundle{
    // Input
    val x = Input(Bool())
    val y = Input(Bool())
    // Output
    val g = Output(Bool())
    val p = Output(Bool())
    val a = Output(Bool())
  })
  io.g := io.x & io.y
  io.p := io.x ^ io.y
  io.a := io.x | io.y
}
