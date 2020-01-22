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

  val g = io.x & io.y
  val p = io.x ^ io.y

  io.g := g
  io.p := p
  io.a := g | p
}
