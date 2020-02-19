package DE1.adder

import DE1.DEUtil.DEUtil.moveRenameFile
import chisel3._
import chisel3.util._
import DE1.component.StdAddIO

class CondSumAdder(data_width : Int, group_width : Int, is_early : Boolean)
  extends Module{

  val io = IO(new StdAddIO(data_width))

  private val num_cond_adder : Int = data_width / group_width

  val cond_adders = for(add_idx <- 0 until num_cond_adder) yield {
    val cond_adder = Module (new CondA(group_width)).io
    cond_adder.x := io.x((add_idx+1) * group_width-1, add_idx * group_width)
    cond_adder.y := io.y((add_idx+1) * group_width-1, add_idx * group_width)
    cond_adder
  }


    if(is_early){
      val partial_res : Seq[(UInt, Bool, UInt, Bool)] =
        for(radix <- 0 to log2Ceil(num_cond_adder))yield{
          if(radix == 0){
            val cs = cond_adders.head
            (cs.s0, cs.c0, cs.s1, cs.c1)
          }else{
            //println(s"radix = ${radix}, start = ${(2^^(radix - 1))}, end = ${2^^(radix)}")
            val part_cd = for(sub_radix <- (2^^(radix - 1)) until (2^^(radix))) yield{
              //println(s"sub_radix = $sub_radix")
              val cs = cond_adders(sub_radix)
              (cs.s0, cs.c0, cs.s1, cs.c1)
            }
            reduce_sum(part_cd).head
          }
        }
      val (s_1more_res,cout) = early_cond_sum((0.U(1.W), io.cin), partial_res)
      require(s_1more_res.getWidth == data_width + 1)
      io.s := s_1more_res(data_width, 1)
      io.cout := cout
    }else{
      val partial_sum = cond_adders.map(cs => (cs.s0, cs.c0, cs.s1, cs.c1))
      val res_sums = reduce_sum(partial_sum)
      require(res_sums.length == 1)
      val result : (UInt, Bool, UInt, Bool) = res_sums.head
      io.s := Mux(io.cin, result._3, result._1)
      io.cout := Mux(io.cin, result._4, result._2)
    }

  implicit class IntUtil(num:Int){
    def ^^(exp:Int) : Int ={
      if(exp == 0){
        1
      }else{
        num * (num ^^ (exp - 1))
      }
    }
  }

  def reduce_sum(partial_sum : Seq[(UInt, Bool, UInt, Bool)])
  :Seq[(UInt, Bool, UInt, Bool)] = {
    // S0, C0out, S1, C1out
    val size : Int = partial_sum.length
    if(size > 1){
      val new_part_sum = for(neighbor_res <- partial_sum.grouped(2)) yield {
        val low_res = neighbor_res.head
        val high_res = neighbor_res(1)
        conditional_sum(low_res, high_res)
      }
      reduce_sum(new_part_sum.toSeq)
    }else{
      partial_sum
    }
  }

  def early_cond_sum(low_s_c : (UInt, Bool),
                     high_res: Seq[(UInt, Bool, UInt, Bool)]):(UInt, Bool) = {
    if(high_res.isEmpty){
      low_s_c
    }else{
      val high_head = high_res.head
      val high_tail = high_res.tail
      val mux_val = Mux(low_s_c._2, high_head._3, high_head._1)
      val mux_cout = Mux(low_s_c._2, high_head._4, high_head._2)
      val cat_val = Cat(mux_val, low_s_c._1)
      early_cond_sum((cat_val, mux_cout), high_tail)
    }
  }

  def conditional_sum(low_res : (UInt, Bool, UInt, Bool),
                      high_res : (UInt, Bool, UInt, Bool)):(UInt, Bool, UInt, Bool)={
    val high_val_cin0 = high_res._1
    val high_val_cin1 = high_res._3
    val high_cout_cin0 = high_res._2
    val high_cout_cin1 = high_res._4
    // Cin = 0
    val l2h_cout_cin0 = low_res._2
    val low_val_cin0 = low_res._1
    val high_val_low_cin0 = Mux(l2h_cout_cin0, high_val_cin1, high_val_cin0)
    val res_cin0 = Cat(high_val_low_cin0, low_val_cin0)
    val cout_cin0 = Mux(l2h_cout_cin0, high_cout_cin1, high_cout_cin0)
    // Cin = 1
    val l2h_cout_cin1 = low_res._4
    val low_val_cin1 = low_res._3
    val high_val_low_cin1 = Mux(l2h_cout_cin1, high_val_cin1, high_val_cin0)
    val res_cin1 = Cat(high_val_low_cin1, low_val_cin1)
    val cout_cin1 = Mux(l2h_cout_cin1, high_cout_cin1, high_cout_cin0)
    (res_cin0, cout_cin0, res_cin1, cout_cin1)
  }
}

object gen_CondSumAdder extends App{

  def gen(dw : Int, gr:Int, is_early:Boolean) = {
    chisel3.Driver.execute(args,()=>{new CondSumAdder(dw,gr,is_early)})
  }

  val data_widths = List(16,32,64)
  val group_widths = List(8,16,32)
  val sel_modes = List(true, false)
  if(true){
    for(dw <- data_widths;gr <- group_widths;sel <- sel_modes if gr < dw){
      println(s"Gen dw = $dw, gr = $gr, sel = $sel")
      val sel_mode : String = if(sel) "early" else "late"
      gen(dw, gr, sel)
      moveRenameFile("CondSumAdder.v",
        s"CondSumAdder_dw_${dw}_gr_${gr}_sel_$sel_mode.v")
    }
  }else{
    gen(64,8, false)
  }

}