package DE1.adder

import chisel3._
import chisel3.util._
import DE1.component.StdAddIO

class CarrySelectAdder(data_width : Int, group_width : Int)
  extends Module {

  suggestName(s"Carry_Select_Adder_dw_${data_width}_gr_$group_width")

  val io = IO(new StdAddIO(data_width))

  private val num_cond_adder = data_width / group_width

  val cond_adders = for(add_idx <- 0 until num_cond_adder) yield{
    val cond_adder = Module(new CondAdder(group_width)).io
    if(add_idx == 0){
      cond_adder.cin := io.cin
    }
    if(add_idx == num_cond_adder - 1){
      io.cout := cond_adder.cout
    }
    cond_adder.x := io.x((add_idx+1) * group_width-1, add_idx * group_width)
    cond_adder.y := io.y((add_idx+1) * group_width-1, add_idx * group_width)
    cond_adder
  }

  for(add_idx <- 1 until num_cond_adder){
    cond_adders(add_idx).cin := cond_adders(add_idx - 1).cout
  }

  io.s := cond_adders.map(_.s).reverse.reduce(Cat(_,_))


}

import DE1.DEUtil.DEUtil.moveRenameFile

object gen_C_Select_Adder extends App{

  def gen(dw : Int, gr:Int) = {
    chisel3.Driver.execute(args,()=>{new CarrySelectAdder(dw,gr)})
  }

  val data_widths = List(16,32,64)
  val group_widths = List(8,16,32)
  if(true){
    for(dw <- data_widths;gr <- group_widths if gr < dw){
      println(s"Gen dw = $dw, gr = $gr")
      gen(dw, gr)
      moveRenameFile("CarrySelectAdder.v", s"CarrySelectAdder_dw_${dw}_gr_$gr.v")
    }
  }else{
    gen(64,8 )
  }

}