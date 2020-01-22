import chisel3._
import chisel3.util._

class CLA_2level(data_width : Int, group_width : Int) extends Module{

  val io = IO(new Bundle{
    // Input
    val x: UInt = Input(UInt(data_width.W))
    val y: UInt = Input(UInt(data_width.W))
    val cin: Bool = Input(Bool())

    // Output
    val s: UInt = Output(UInt(data_width.W))
    val cout: Bool = Output(Bool())
  })

  // Create CLA, Connect Input
  val num_CLA = data_width / group_width
  val CLAs = for(idx <- 0 until num_CLA) yield {
    val cla = Module(new CLA(group_width)).io
    cla.x := io.x(group_width * (idx + 1) - 1, idx * group_width)
    cla.y := io.y(group_width * (idx + 1) - 1, idx * group_width)
    if(idx == 0){
      cla.cin := io.cin
    }
    cla
  }

  // Connect Sum
  io.s := CLAs.map(_.s).reverse.reduce(Cat(_,_))

}
