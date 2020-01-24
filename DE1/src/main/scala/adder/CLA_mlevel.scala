package adder

import DEUtil.DEUtil.moveRenameFile
import chisel3._
import chisel3.util._
import component.{CLG, StdAddIO}

class CLA_mlevel(data_width: Int, group_width: Int) extends Module {
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

  // Connect Sum
  io.s := CLAs.map(_.s).reverse.reduce(Cat(_,_))

  // Define Connect Through CLG
  def connect_through_CLG(g: UInt, a: UInt, Cin: Vec[Bool])
  :(Bool, Bool, Bool, Bool) = { // G, A, Cin, Cout
    require(a.getWidth == g.getWidth)
    val width = g.getWidth
    val CLG = Module(new CLG(width)).io
    CLG.g := g
    CLG.a := a
    val nxt_in : Bool = Wire(Bool())
    CLG.cin := nxt_in
    for(idx <- 0 until width){
      println(s"CLG @ $idx")
      val cin = Cin(idx)
      if(idx > 0){
        cin := CLG.c(idx - 1)
      }else{
        cin := nxt_in
      }
    }
    (CLG.G, CLG.A, nxt_in, CLG.c(width - 1))
  }

  def reduce_connect_CLG(gs : Vec[Bool], as : Vec[Bool], Cins : Vec[Bool], Couts : Vec[Bool])
  : Bool = {
    val width = gs.length
    println(s"Width = $width")
    if(width % group_width == 0){
      val gs_group = gs.grouped(group_width).toIndexedSeq
      val as_group = as.grouped(group_width).toIndexedSeq
      val Cins_group = Cins.grouped(group_width).toIndexedSeq
      require(gs_group.length == as_group.length && as_group.length == Cins_group.length)
      val g_a_cin_cout_group : Seq[(Bool, Bool, Bool, Bool)] =
        for(group_idx <- gs_group.indices) yield {
          println(s"Group @ $group_idx")
        val g : UInt = VecInit(gs_group(group_idx)).asUInt()
        val a : UInt = VecInit(as_group(group_idx)).asUInt()
        val Cin : Vec[Bool] = VecInit(Cins_group(group_idx))
        connect_through_CLG(g, a, Cin)
      }
      val nxt_gs : Vec[Bool] = VecInit(g_a_cin_cout_group.map(_._1))
      val nxt_as : Vec[Bool] = VecInit(g_a_cin_cout_group.map(_._2))
      val nxt_Cin : Vec[Bool] = VecInit(g_a_cin_cout_group.map(_._3))
      val nxt_Cout : Vec[Bool] = VecInit(g_a_cin_cout_group.map(_._4))
      nxt_Cin.head := io.cin // First CLG
      reduce_connect_CLG(nxt_gs, nxt_as, nxt_Cin, nxt_Cout)
    }else{
      for(idx <- 0 until width){
        if(idx > 0){
          println(s"Ripple Cin @ $idx")
          Cins(idx) := Couts(idx - 1)
        }else{
          Cins(idx) := io.cin
        }
      }
      Couts(width - 1)
    }
  }

  val gs : Vec[Bool] = VecInit(CLAs.map(_.G))
  val as : Vec[Bool] = VecInit(CLAs.map(_.A))
  val Cins : Vec[Bool] = VecInit(CLAs.map(_.cin))
  val Couts : Vec[Bool] = VecInit(CLAs.map(_.cout))

  io.cout := reduce_connect_CLG(gs,as,Cins,Couts)
}

object gen_CLA_mlevel extends App{

  def gen(dw : Int, gw: Int) = {
    chisel3.Driver.execute(args,()=>{
      val module = new CLA_mlevel(dw,gw)
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
        moveRenameFile("adder.CLA_mlevel.v", "CLA_mlevel_" + dw + "_" + gw + ".v")
      }
    }
  }
}