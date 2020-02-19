package DE1.component

import chisel3._
import chisel3.util._

class StdAddIO(width:Int) extends Bundle{
  // Input
  val x: UInt = Input(UInt(width.W))
  val y: UInt = Input(UInt(width.W))
  val cin: Bool = Input(Bool())

  // Output
  val s: UInt = Output(UInt(width.W))
  val cout: Bool = Output(Bool())

  override def cloneType =
    new StdAddIO(width).asInstanceOf[this.type]
}

trait GA {
  // G, A
  val G: Bool = Output(Bool())
  val A: Bool = Output(Bool())
}

class StdAddIO_gp(width:Int) extends StdAddIO(width){
  // G, P
  val g = Output(UInt(width.W))
  val p = Output(UInt(width.W))
  override def cloneType =
    new StdAddIO_gp(width).asInstanceOf[this.type]
}

class StdAddIO_GA(width:Int) extends StdAddIO(width) with GA{
  override def cloneType =
    new StdAddIO_GA(width).asInstanceOf[this.type]
}