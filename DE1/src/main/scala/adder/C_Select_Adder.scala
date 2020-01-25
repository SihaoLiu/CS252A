package adder

import DEUtil.DEUtil.moveRenameFile
import chisel3._
import component.{CLG, GPA1, StdAddIO_GA}

class C_Select_Adder(data_width : Int, is_early : Boolean)
  extends Module {

  suggestName(s"Carry_Select_Adder_dw_$data_width")

  val io = IO(new StdAddIO_GA(data_width))



}
