package DE1.adder

import chisel3._
import chisel3.util._
import DE1.component.{CLG, StdAddIO}

class CLA_2level(data_width : Int, group_width : Int) extends Module{

  suggestName(s"CLA_2level_dw_${data_width}_gr_$group_width")

  val io = IO(new StdAddIO(data_width))

  // Create adder.CLA, Connect Input
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

  // Second Level CLG
  val clg = Module(new CLG(num_CLA)).io
  clg.cin := io.cin
  clg.g := VecInit(CLAs.map(_.G)).asUInt()
  clg.a := VecInit(CLAs.map(_.A)).asUInt()
  for(clg_cout_idx <- 0 until num_CLA){
    val cout = clg.c(clg_cout_idx)
    if(clg_cout_idx < num_CLA - 1){
      CLAs(clg_cout_idx + 1).cin := cout
    }else{
      io.cout := cout
    }
  }

  // Connect Sum
  io.s := CLAs.map(_.s).reverse.reduce(Cat(_,_))

}
