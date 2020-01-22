import chisel3._
import component.FA1

class CRA(data_width : Int) extends Module{
  val io = IO(new Bundle{
    // Input
    val x = Input(UInt(data_width.W))
    val y = Input(UInt(data_width.W))
    val cin = Input(Bool())

    // Output
    val s = Output(UInt(data_width.W))
    val cout = Output(Bool())

    // G, P
    val g = Output(UInt(data_width.W))
    val p = Output(UInt(data_width.W))
  })

  // Create Full Adder Chain
  val fa_chain = for(bit_idx <- 0 until data_width)yield{
    val fa = Module(new FA1).io
    fa.x := io.x(bit_idx)
    fa.y := io.y(bit_idx)
    fa
  }

  // Connect FA chain
  for(bit_idx <- 1 until data_width){
    fa_chain(bit_idx).cin := fa_chain(bit_idx - 1).cout
  }

  // Connect Cin and Cout
  fa_chain.head.cin := io.cin
  io.cout := fa_chain.last.cout

  // Connect Sum
  io.s := VecInit(fa_chain.map(_.s)).asUInt()

  // Connect G, P
  io.g := VecInit(fa_chain.map(_.g)).asUInt()
  io.p := VecInit(fa_chain.map(_.p)).asUInt()
}

object gen_CRA extends App{
  chisel3.Driver.execute(args,()=>{
    val module = new CRA(64)
    module
  })
}