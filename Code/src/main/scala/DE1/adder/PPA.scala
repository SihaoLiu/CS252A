package DE1.adder

import chisel3._
import DE1.component.StdAddIO

class PPA (data_width : Int) extends Module{

  suggestName(s"PPA_dw_$data_width")

  val io = IO(new StdAddIO(data_width))



}
