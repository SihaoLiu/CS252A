package DE1.adder

import DE1.DEUtil.DEUtil.moveRenameFile
import chisel3._
import chisel3.util._
import DE1.component.{CLG, StdAddIO}
import scala.math._

class CLAmlevel(data_width: Int, num_level: Int) extends Module {

  suggestName(s"CLA_${num_level}level")

  val io = IO(new StdAddIO(data_width))

  private val group_width : Int = round(pow(data_width.toFloat, 1.0/num_level.toFloat).toFloat)
  private val num_CLA : Int = data_width / group_width

  // Create Carry-in Lines
  val Cin_lines : Vec[Bool] = VecInit(Seq.fill(num_CLA)(WireInit(false.B)))
  Cin_lines.head := io.cin

  // Level 1: Create adder.CLA, Connect Input
  val CLAs = for(idx <- 0 until num_CLA) yield {
    val cla = Module(new CLA(group_width)).io
    cla.x := io.x(group_width * (idx + 1) - 1, idx * group_width)
    cla.y := io.y(group_width * (idx + 1) - 1, idx * group_width)
    cla.cin := Cin_lines(idx)
    cla
  }

  // Connect Sum
  io.s := CLAs.map(_.s).reverse.reduce(Cat(_,_))

  // Level 2 - n : Create CLGs
  val CLGs_mlevel = for(level_idx <- 1 until num_level) yield {
    val cover_bits : Int = round(pow(group_width, level_idx)).toInt
    val num_CLG : Int = num_CLA / cover_bits
    val CLGs = for(clg_idx <- 0 until num_CLG) yield {
      val clg = Module(new CLG(group_width)).io
      // Connect Cin
      clg.cin := Cin_lines(cover_bits * clg_idx)
      clg
    }
    CLGs
  }

  // Connect G, A, Cin
  for(level_idx <- 1 until num_level){
    val cover_bits : Int = round(pow(group_width, level_idx)).toInt
    val num_CLG : Int = num_CLA / cover_bits
    val CLGs = CLGs_mlevel(level_idx - 1)
    val prev_level_GA : IndexedSeq[(Bool, Bool)]=
      if(level_idx == 1){
        CLAs.map(ga => (ga.G, ga.A))
      }else{
        CLGs_mlevel(level_idx - 2).map(ga => (ga.G, ga.A))
      }
    // Require this level num * group_width = previous level
    val prev_num = prev_level_GA.length
    val this_num = CLGs.length
    require(this_num == num_CLG)
    require(this_num * group_width == prev_num)
    // Connect G, A
    for((prev_ga,idx) <-
          prev_level_GA.grouped(group_width).zipWithIndex){
      val clg = CLGs(idx)
      // Connect G, A
      clg.g := VecInit(prev_ga.map(_._1)).asUInt()
      clg.a := VecInit(prev_ga.map(_._2)).asUInt()
      // Connect Cout
      for(cout_idx <- 0 until group_width - 1){
        // Last Count bit is not used
        Cin_lines(idx * cover_bits + (cover_bits / group_width) * (1+cout_idx)) :=
          clg.c(cout_idx)
      }
    }
  }

  // Actual Cout
  io.cout := CLGs_mlevel.last.last.c(group_width - 1)
}

object gen_CLA_mlevel extends App{

  def gen(dw : Int, nl: Int) = {
    chisel3.Driver.execute(args,()=>{
      val module = new CLAmlevel(dw,nl)
      module
    })
  }

  def can_build(dw:Int, nl: Int): Boolean = {
    val act_gw : Double = pow(dw.toFloat, 1.0/nl.toFloat)
    val nearest_gw : Double = round(act_gw.toFloat).toDouble
    abs(act_gw - nearest_gw) <= 0.0001
  }

  val data_widths = List(16,32,64)
  val num_levels = List(2,3,4,5,6,7,8)
  if(true){
    for(dw <- data_widths; nl <- num_levels if can_build(dw, nl)){
      println(s"Gen dw = $dw, gw = $nl")
      gen(dw,nl)
      moveRenameFile("CLAmlevel.v", "CLAmlevel_" + dw + "_" + nl + ".v")
    }
  }else{
    gen(64, 3)
  }

}