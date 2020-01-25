package adder

import DEUtil.DEUtil._
import chisel3._
import chisel3.util._
import component.StdAddIO
class CSK(data_width : Int, group_width : Int) extends Module{

  suggestName(s"CSK_dw_$data_width")

  val io = IO(new StdAddIO(data_width))

  // Only consider data_width is multiple of group_width
  require(data_width % group_width == 0)

  // Create adder.CRA group
  val num_group : Int = data_width / group_width
  val cra_chain = for(cra_idx <- 0 until num_group) yield {
    val cra = Module(new CRA(group_width)).io
    cra.x := io.x((cra_idx + 1) * group_width - 1,cra_idx * group_width)
    cra.y := io.y((cra_idx + 1) * group_width - 1,cra_idx * group_width)
    // Connect Head (Tail will be connected later)
    if(cra_idx == 0){
      cra.cin := io.cin
    }
    cra
  }

  // Carry skip
  for(cra_idx <- 1 until num_group){
    val cra = cra_chain(cra_idx)
    val prev_cra = cra_chain(cra_idx - 1)
    // Calculate P
    val p = prev_cra.p.andR()
    // Tail
    if(cra_idx == num_group - 1){
      io.cout := cra.cout
    }
    if(cra_idx == 1){
      // Second
      cra.cin := prev_cra.cout | (p & io.cin)
    }else {
      val prev_prev_cra = cra_chain(cra_idx - 2)
      // Third and further
      cra.cin := prev_cra.cout | (p & prev_prev_cra.cout)
    }
  }

  // Connect Sum
  io.s := cra_chain.map(_.s).reverse.reduce(Cat(_,_))
}

object gen_CSK extends App{

  private def gen(dw : Int, gw: Int) = {
    chisel3.Driver.execute(args,()=>{
      val module = new CSK(dw,gw)
      module
    })
  }

  val group_widths = List(2,4,8,16,32)
  val data_widths = List(16,32,64)
  if(true){
    for(dw <- data_widths; gw <- group_widths){
      if(gw < dw){
        println(s"Gen dw = $dw, gw = $gw")
        gen(dw,gw)
        moveRenameFile("adder.CSK.v", "CSK_" + dw + "_" + gw + ".v")
      }
    }
  }
}