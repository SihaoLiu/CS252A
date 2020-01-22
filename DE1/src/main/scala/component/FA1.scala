package component

import chisel3._
import chisel3.util._

class FA1 extends Module{
  val io = IO(new Bundle{
    // Input
    val x = Input(Bool())
    val y = Input(Bool())
    val cin = Input(Bool())
    // Output
    val s = Output(Bool())
    val cout = Output(Bool())
    // G, P, A, K
    val g = Output(Bool())
    val p = Output(Bool())
  })

  val p : Bool = io.x ^ io.y
  val g : Bool = io.x & io.y

  // S = X ^ Y ^ Cin
  io.s := p ^ io.cin

  // Cout = G + P * Cin
  io.cout := g | (p & io.cin)

  // G, P
  io.g := g
  io.p := p
}
