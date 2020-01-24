module FA1(
  input   io_x,
  input   io_y,
  input   io_cin,
  output  io_s,
  output  io_cout
);
  wire  p; // @[FA1.scala 17:23]
  wire  g; // @[FA1.scala 18:23]
  wire  _T_1; // @[FA1.scala 24:21]
  assign p = io_x ^ io_y; // @[FA1.scala 17:23]
  assign g = io_x & io_y; // @[FA1.scala 18:23]
  assign _T_1 = p & io_cin; // @[FA1.scala 24:21]
  assign io_s = p ^ io_cin; // @[FA1.scala 21:8]
  assign io_cout = g | _T_1; // @[FA1.scala 24:11]
endmodule
module adder.CRA(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  input         io_cin,
  output [63:0] io_s,
  output        io_cout
);
  wire  FA1_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_1_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_1_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_1_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_1_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_1_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_2_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_2_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_2_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_2_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_2_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_3_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_3_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_3_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_3_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_3_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_4_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_4_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_4_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_4_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_4_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_5_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_5_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_5_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_5_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_5_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_6_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_6_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_6_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_6_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_6_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_7_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_7_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_7_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_7_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_7_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_8_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_8_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_8_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_8_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_8_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_9_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_9_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_9_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_9_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_9_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_10_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_10_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_10_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_10_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_10_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_11_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_11_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_11_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_11_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_11_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_12_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_12_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_12_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_12_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_12_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_13_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_13_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_13_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_13_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_13_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_14_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_14_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_14_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_14_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_14_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_15_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_15_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_15_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_15_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_15_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_16_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_16_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_16_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_16_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_16_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_17_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_17_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_17_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_17_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_17_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_18_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_18_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_18_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_18_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_18_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_19_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_19_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_19_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_19_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_19_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_20_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_20_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_20_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_20_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_20_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_21_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_21_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_21_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_21_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_21_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_22_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_22_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_22_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_22_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_22_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_23_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_23_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_23_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_23_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_23_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_24_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_24_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_24_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_24_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_24_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_25_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_25_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_25_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_25_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_25_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_26_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_26_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_26_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_26_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_26_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_27_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_27_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_27_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_27_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_27_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_28_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_28_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_28_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_28_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_28_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_29_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_29_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_29_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_29_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_29_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_30_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_30_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_30_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_30_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_30_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_31_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_31_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_31_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_31_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_31_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_32_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_32_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_32_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_32_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_32_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_33_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_33_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_33_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_33_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_33_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_34_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_34_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_34_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_34_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_34_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_35_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_35_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_35_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_35_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_35_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_36_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_36_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_36_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_36_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_36_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_37_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_37_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_37_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_37_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_37_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_38_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_38_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_38_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_38_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_38_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_39_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_39_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_39_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_39_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_39_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_40_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_40_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_40_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_40_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_40_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_41_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_41_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_41_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_41_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_41_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_42_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_42_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_42_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_42_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_42_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_43_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_43_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_43_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_43_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_43_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_44_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_44_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_44_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_44_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_44_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_45_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_45_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_45_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_45_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_45_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_46_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_46_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_46_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_46_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_46_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_47_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_47_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_47_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_47_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_47_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_48_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_48_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_48_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_48_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_48_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_49_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_49_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_49_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_49_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_49_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_50_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_50_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_50_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_50_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_50_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_51_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_51_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_51_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_51_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_51_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_52_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_52_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_52_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_52_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_52_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_53_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_53_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_53_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_53_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_53_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_54_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_54_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_54_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_54_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_54_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_55_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_55_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_55_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_55_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_55_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_56_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_56_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_56_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_56_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_56_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_57_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_57_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_57_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_57_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_57_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_58_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_58_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_58_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_58_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_58_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_59_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_59_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_59_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_59_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_59_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_60_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_60_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_60_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_60_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_60_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_61_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_61_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_61_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_61_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_61_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_62_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_62_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_62_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_62_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_62_io_cout; // @[adder.CRA.scala 19:20]
  wire  FA1_63_io_x; // @[adder.CRA.scala 19:20]
  wire  FA1_63_io_y; // @[adder.CRA.scala 19:20]
  wire  FA1_63_io_cin; // @[adder.CRA.scala 19:20]
  wire  FA1_63_io_s; // @[adder.CRA.scala 19:20]
  wire  FA1_63_io_cout; // @[adder.CRA.scala 19:20]
  wire  vec_s_1; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_0; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_3; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_2; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_5; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_4; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_7; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_6; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [7:0] _T_134; // @[adder.CRA.scala 36:23]
  wire  vec_s_9; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_8; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_11; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_10; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_13; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_12; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_15; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_14; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [15:0] _T_142; // @[adder.CRA.scala 36:23]
  wire  vec_s_17; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_16; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_19; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_18; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_21; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_20; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_23; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_22; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [7:0] _T_149; // @[adder.CRA.scala 36:23]
  wire  vec_s_25; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_24; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_27; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_26; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_29; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_28; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_31; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_30; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [31:0] _T_158; // @[adder.CRA.scala 36:23]
  wire  vec_s_33; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_32; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_35; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_34; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_37; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_36; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_39; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_38; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [7:0] _T_165; // @[adder.CRA.scala 36:23]
  wire  vec_s_41; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_40; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_43; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_42; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_45; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_44; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_47; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_46; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [15:0] _T_173; // @[adder.CRA.scala 36:23]
  wire  vec_s_49; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_48; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_51; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_50; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_53; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_52; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_55; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_54; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [7:0] _T_180; // @[adder.CRA.scala 36:23]
  wire  vec_s_57; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_56; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_59; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_58; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_61; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_60; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_63; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire  vec_s_62; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  wire [31:0] _T_189; // @[adder.CRA.scala 36:23]
  FA1 FA1 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_io_x),
    .io_y(FA1_io_y),
    .io_cin(FA1_io_cin),
    .io_s(FA1_io_s),
    .io_cout(FA1_io_cout)
  );
  FA1 FA1_1 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_1_io_x),
    .io_y(FA1_1_io_y),
    .io_cin(FA1_1_io_cin),
    .io_s(FA1_1_io_s),
    .io_cout(FA1_1_io_cout)
  );
  FA1 FA1_2 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_2_io_x),
    .io_y(FA1_2_io_y),
    .io_cin(FA1_2_io_cin),
    .io_s(FA1_2_io_s),
    .io_cout(FA1_2_io_cout)
  );
  FA1 FA1_3 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_3_io_x),
    .io_y(FA1_3_io_y),
    .io_cin(FA1_3_io_cin),
    .io_s(FA1_3_io_s),
    .io_cout(FA1_3_io_cout)
  );
  FA1 FA1_4 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_4_io_x),
    .io_y(FA1_4_io_y),
    .io_cin(FA1_4_io_cin),
    .io_s(FA1_4_io_s),
    .io_cout(FA1_4_io_cout)
  );
  FA1 FA1_5 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_5_io_x),
    .io_y(FA1_5_io_y),
    .io_cin(FA1_5_io_cin),
    .io_s(FA1_5_io_s),
    .io_cout(FA1_5_io_cout)
  );
  FA1 FA1_6 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_6_io_x),
    .io_y(FA1_6_io_y),
    .io_cin(FA1_6_io_cin),
    .io_s(FA1_6_io_s),
    .io_cout(FA1_6_io_cout)
  );
  FA1 FA1_7 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_7_io_x),
    .io_y(FA1_7_io_y),
    .io_cin(FA1_7_io_cin),
    .io_s(FA1_7_io_s),
    .io_cout(FA1_7_io_cout)
  );
  FA1 FA1_8 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_8_io_x),
    .io_y(FA1_8_io_y),
    .io_cin(FA1_8_io_cin),
    .io_s(FA1_8_io_s),
    .io_cout(FA1_8_io_cout)
  );
  FA1 FA1_9 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_9_io_x),
    .io_y(FA1_9_io_y),
    .io_cin(FA1_9_io_cin),
    .io_s(FA1_9_io_s),
    .io_cout(FA1_9_io_cout)
  );
  FA1 FA1_10 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_10_io_x),
    .io_y(FA1_10_io_y),
    .io_cin(FA1_10_io_cin),
    .io_s(FA1_10_io_s),
    .io_cout(FA1_10_io_cout)
  );
  FA1 FA1_11 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_11_io_x),
    .io_y(FA1_11_io_y),
    .io_cin(FA1_11_io_cin),
    .io_s(FA1_11_io_s),
    .io_cout(FA1_11_io_cout)
  );
  FA1 FA1_12 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_12_io_x),
    .io_y(FA1_12_io_y),
    .io_cin(FA1_12_io_cin),
    .io_s(FA1_12_io_s),
    .io_cout(FA1_12_io_cout)
  );
  FA1 FA1_13 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_13_io_x),
    .io_y(FA1_13_io_y),
    .io_cin(FA1_13_io_cin),
    .io_s(FA1_13_io_s),
    .io_cout(FA1_13_io_cout)
  );
  FA1 FA1_14 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_14_io_x),
    .io_y(FA1_14_io_y),
    .io_cin(FA1_14_io_cin),
    .io_s(FA1_14_io_s),
    .io_cout(FA1_14_io_cout)
  );
  FA1 FA1_15 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_15_io_x),
    .io_y(FA1_15_io_y),
    .io_cin(FA1_15_io_cin),
    .io_s(FA1_15_io_s),
    .io_cout(FA1_15_io_cout)
  );
  FA1 FA1_16 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_16_io_x),
    .io_y(FA1_16_io_y),
    .io_cin(FA1_16_io_cin),
    .io_s(FA1_16_io_s),
    .io_cout(FA1_16_io_cout)
  );
  FA1 FA1_17 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_17_io_x),
    .io_y(FA1_17_io_y),
    .io_cin(FA1_17_io_cin),
    .io_s(FA1_17_io_s),
    .io_cout(FA1_17_io_cout)
  );
  FA1 FA1_18 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_18_io_x),
    .io_y(FA1_18_io_y),
    .io_cin(FA1_18_io_cin),
    .io_s(FA1_18_io_s),
    .io_cout(FA1_18_io_cout)
  );
  FA1 FA1_19 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_19_io_x),
    .io_y(FA1_19_io_y),
    .io_cin(FA1_19_io_cin),
    .io_s(FA1_19_io_s),
    .io_cout(FA1_19_io_cout)
  );
  FA1 FA1_20 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_20_io_x),
    .io_y(FA1_20_io_y),
    .io_cin(FA1_20_io_cin),
    .io_s(FA1_20_io_s),
    .io_cout(FA1_20_io_cout)
  );
  FA1 FA1_21 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_21_io_x),
    .io_y(FA1_21_io_y),
    .io_cin(FA1_21_io_cin),
    .io_s(FA1_21_io_s),
    .io_cout(FA1_21_io_cout)
  );
  FA1 FA1_22 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_22_io_x),
    .io_y(FA1_22_io_y),
    .io_cin(FA1_22_io_cin),
    .io_s(FA1_22_io_s),
    .io_cout(FA1_22_io_cout)
  );
  FA1 FA1_23 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_23_io_x),
    .io_y(FA1_23_io_y),
    .io_cin(FA1_23_io_cin),
    .io_s(FA1_23_io_s),
    .io_cout(FA1_23_io_cout)
  );
  FA1 FA1_24 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_24_io_x),
    .io_y(FA1_24_io_y),
    .io_cin(FA1_24_io_cin),
    .io_s(FA1_24_io_s),
    .io_cout(FA1_24_io_cout)
  );
  FA1 FA1_25 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_25_io_x),
    .io_y(FA1_25_io_y),
    .io_cin(FA1_25_io_cin),
    .io_s(FA1_25_io_s),
    .io_cout(FA1_25_io_cout)
  );
  FA1 FA1_26 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_26_io_x),
    .io_y(FA1_26_io_y),
    .io_cin(FA1_26_io_cin),
    .io_s(FA1_26_io_s),
    .io_cout(FA1_26_io_cout)
  );
  FA1 FA1_27 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_27_io_x),
    .io_y(FA1_27_io_y),
    .io_cin(FA1_27_io_cin),
    .io_s(FA1_27_io_s),
    .io_cout(FA1_27_io_cout)
  );
  FA1 FA1_28 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_28_io_x),
    .io_y(FA1_28_io_y),
    .io_cin(FA1_28_io_cin),
    .io_s(FA1_28_io_s),
    .io_cout(FA1_28_io_cout)
  );
  FA1 FA1_29 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_29_io_x),
    .io_y(FA1_29_io_y),
    .io_cin(FA1_29_io_cin),
    .io_s(FA1_29_io_s),
    .io_cout(FA1_29_io_cout)
  );
  FA1 FA1_30 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_30_io_x),
    .io_y(FA1_30_io_y),
    .io_cin(FA1_30_io_cin),
    .io_s(FA1_30_io_s),
    .io_cout(FA1_30_io_cout)
  );
  FA1 FA1_31 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_31_io_x),
    .io_y(FA1_31_io_y),
    .io_cin(FA1_31_io_cin),
    .io_s(FA1_31_io_s),
    .io_cout(FA1_31_io_cout)
  );
  FA1 FA1_32 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_32_io_x),
    .io_y(FA1_32_io_y),
    .io_cin(FA1_32_io_cin),
    .io_s(FA1_32_io_s),
    .io_cout(FA1_32_io_cout)
  );
  FA1 FA1_33 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_33_io_x),
    .io_y(FA1_33_io_y),
    .io_cin(FA1_33_io_cin),
    .io_s(FA1_33_io_s),
    .io_cout(FA1_33_io_cout)
  );
  FA1 FA1_34 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_34_io_x),
    .io_y(FA1_34_io_y),
    .io_cin(FA1_34_io_cin),
    .io_s(FA1_34_io_s),
    .io_cout(FA1_34_io_cout)
  );
  FA1 FA1_35 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_35_io_x),
    .io_y(FA1_35_io_y),
    .io_cin(FA1_35_io_cin),
    .io_s(FA1_35_io_s),
    .io_cout(FA1_35_io_cout)
  );
  FA1 FA1_36 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_36_io_x),
    .io_y(FA1_36_io_y),
    .io_cin(FA1_36_io_cin),
    .io_s(FA1_36_io_s),
    .io_cout(FA1_36_io_cout)
  );
  FA1 FA1_37 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_37_io_x),
    .io_y(FA1_37_io_y),
    .io_cin(FA1_37_io_cin),
    .io_s(FA1_37_io_s),
    .io_cout(FA1_37_io_cout)
  );
  FA1 FA1_38 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_38_io_x),
    .io_y(FA1_38_io_y),
    .io_cin(FA1_38_io_cin),
    .io_s(FA1_38_io_s),
    .io_cout(FA1_38_io_cout)
  );
  FA1 FA1_39 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_39_io_x),
    .io_y(FA1_39_io_y),
    .io_cin(FA1_39_io_cin),
    .io_s(FA1_39_io_s),
    .io_cout(FA1_39_io_cout)
  );
  FA1 FA1_40 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_40_io_x),
    .io_y(FA1_40_io_y),
    .io_cin(FA1_40_io_cin),
    .io_s(FA1_40_io_s),
    .io_cout(FA1_40_io_cout)
  );
  FA1 FA1_41 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_41_io_x),
    .io_y(FA1_41_io_y),
    .io_cin(FA1_41_io_cin),
    .io_s(FA1_41_io_s),
    .io_cout(FA1_41_io_cout)
  );
  FA1 FA1_42 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_42_io_x),
    .io_y(FA1_42_io_y),
    .io_cin(FA1_42_io_cin),
    .io_s(FA1_42_io_s),
    .io_cout(FA1_42_io_cout)
  );
  FA1 FA1_43 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_43_io_x),
    .io_y(FA1_43_io_y),
    .io_cin(FA1_43_io_cin),
    .io_s(FA1_43_io_s),
    .io_cout(FA1_43_io_cout)
  );
  FA1 FA1_44 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_44_io_x),
    .io_y(FA1_44_io_y),
    .io_cin(FA1_44_io_cin),
    .io_s(FA1_44_io_s),
    .io_cout(FA1_44_io_cout)
  );
  FA1 FA1_45 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_45_io_x),
    .io_y(FA1_45_io_y),
    .io_cin(FA1_45_io_cin),
    .io_s(FA1_45_io_s),
    .io_cout(FA1_45_io_cout)
  );
  FA1 FA1_46 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_46_io_x),
    .io_y(FA1_46_io_y),
    .io_cin(FA1_46_io_cin),
    .io_s(FA1_46_io_s),
    .io_cout(FA1_46_io_cout)
  );
  FA1 FA1_47 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_47_io_x),
    .io_y(FA1_47_io_y),
    .io_cin(FA1_47_io_cin),
    .io_s(FA1_47_io_s),
    .io_cout(FA1_47_io_cout)
  );
  FA1 FA1_48 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_48_io_x),
    .io_y(FA1_48_io_y),
    .io_cin(FA1_48_io_cin),
    .io_s(FA1_48_io_s),
    .io_cout(FA1_48_io_cout)
  );
  FA1 FA1_49 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_49_io_x),
    .io_y(FA1_49_io_y),
    .io_cin(FA1_49_io_cin),
    .io_s(FA1_49_io_s),
    .io_cout(FA1_49_io_cout)
  );
  FA1 FA1_50 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_50_io_x),
    .io_y(FA1_50_io_y),
    .io_cin(FA1_50_io_cin),
    .io_s(FA1_50_io_s),
    .io_cout(FA1_50_io_cout)
  );
  FA1 FA1_51 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_51_io_x),
    .io_y(FA1_51_io_y),
    .io_cin(FA1_51_io_cin),
    .io_s(FA1_51_io_s),
    .io_cout(FA1_51_io_cout)
  );
  FA1 FA1_52 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_52_io_x),
    .io_y(FA1_52_io_y),
    .io_cin(FA1_52_io_cin),
    .io_s(FA1_52_io_s),
    .io_cout(FA1_52_io_cout)
  );
  FA1 FA1_53 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_53_io_x),
    .io_y(FA1_53_io_y),
    .io_cin(FA1_53_io_cin),
    .io_s(FA1_53_io_s),
    .io_cout(FA1_53_io_cout)
  );
  FA1 FA1_54 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_54_io_x),
    .io_y(FA1_54_io_y),
    .io_cin(FA1_54_io_cin),
    .io_s(FA1_54_io_s),
    .io_cout(FA1_54_io_cout)
  );
  FA1 FA1_55 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_55_io_x),
    .io_y(FA1_55_io_y),
    .io_cin(FA1_55_io_cin),
    .io_s(FA1_55_io_s),
    .io_cout(FA1_55_io_cout)
  );
  FA1 FA1_56 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_56_io_x),
    .io_y(FA1_56_io_y),
    .io_cin(FA1_56_io_cin),
    .io_s(FA1_56_io_s),
    .io_cout(FA1_56_io_cout)
  );
  FA1 FA1_57 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_57_io_x),
    .io_y(FA1_57_io_y),
    .io_cin(FA1_57_io_cin),
    .io_s(FA1_57_io_s),
    .io_cout(FA1_57_io_cout)
  );
  FA1 FA1_58 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_58_io_x),
    .io_y(FA1_58_io_y),
    .io_cin(FA1_58_io_cin),
    .io_s(FA1_58_io_s),
    .io_cout(FA1_58_io_cout)
  );
  FA1 FA1_59 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_59_io_x),
    .io_y(FA1_59_io_y),
    .io_cin(FA1_59_io_cin),
    .io_s(FA1_59_io_s),
    .io_cout(FA1_59_io_cout)
  );
  FA1 FA1_60 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_60_io_x),
    .io_y(FA1_60_io_y),
    .io_cin(FA1_60_io_cin),
    .io_s(FA1_60_io_s),
    .io_cout(FA1_60_io_cout)
  );
  FA1 FA1_61 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_61_io_x),
    .io_y(FA1_61_io_y),
    .io_cin(FA1_61_io_cin),
    .io_s(FA1_61_io_s),
    .io_cout(FA1_61_io_cout)
  );
  FA1 FA1_62 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_62_io_x),
    .io_y(FA1_62_io_y),
    .io_cin(FA1_62_io_cin),
    .io_s(FA1_62_io_s),
    .io_cout(FA1_62_io_cout)
  );
  FA1 FA1_63 ( // @[adder.CRA.scala 19:20]
    .io_x(FA1_63_io_x),
    .io_y(FA1_63_io_y),
    .io_cin(FA1_63_io_cin),
    .io_s(FA1_63_io_s),
    .io_cout(FA1_63_io_cout)
  );
  assign vec_s_1 = FA1_1_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_0 = FA1_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_3 = FA1_3_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_2 = FA1_2_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_5 = FA1_5_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_4 = FA1_4_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_7 = FA1_7_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_6 = FA1_6_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_134 = {vec_s_7,vec_s_6,vec_s_5,vec_s_4,vec_s_3,vec_s_2,vec_s_1,vec_s_0}; // @[adder.CRA.scala 36:23]
  assign vec_s_9 = FA1_9_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_8 = FA1_8_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_11 = FA1_11_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_10 = FA1_10_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_13 = FA1_13_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_12 = FA1_12_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_15 = FA1_15_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_14 = FA1_14_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_142 = {vec_s_15,vec_s_14,vec_s_13,vec_s_12,vec_s_11,vec_s_10,vec_s_9,vec_s_8,_T_134}; // @[adder.CRA.scala 36:23]
  assign vec_s_17 = FA1_17_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_16 = FA1_16_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_19 = FA1_19_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_18 = FA1_18_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_21 = FA1_21_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_20 = FA1_20_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_23 = FA1_23_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_22 = FA1_22_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_149 = {vec_s_23,vec_s_22,vec_s_21,vec_s_20,vec_s_19,vec_s_18,vec_s_17,vec_s_16}; // @[adder.CRA.scala 36:23]
  assign vec_s_25 = FA1_25_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_24 = FA1_24_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_27 = FA1_27_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_26 = FA1_26_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_29 = FA1_29_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_28 = FA1_28_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_31 = FA1_31_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_30 = FA1_30_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_158 = {vec_s_31,vec_s_30,vec_s_29,vec_s_28,vec_s_27,vec_s_26,vec_s_25,vec_s_24,_T_149,_T_142}; // @[adder.CRA.scala 36:23]
  assign vec_s_33 = FA1_33_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_32 = FA1_32_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_35 = FA1_35_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_34 = FA1_34_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_37 = FA1_37_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_36 = FA1_36_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_39 = FA1_39_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_38 = FA1_38_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_165 = {vec_s_39,vec_s_38,vec_s_37,vec_s_36,vec_s_35,vec_s_34,vec_s_33,vec_s_32}; // @[adder.CRA.scala 36:23]
  assign vec_s_41 = FA1_41_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_40 = FA1_40_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_43 = FA1_43_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_42 = FA1_42_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_45 = FA1_45_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_44 = FA1_44_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_47 = FA1_47_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_46 = FA1_46_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_173 = {vec_s_47,vec_s_46,vec_s_45,vec_s_44,vec_s_43,vec_s_42,vec_s_41,vec_s_40,_T_165}; // @[adder.CRA.scala 36:23]
  assign vec_s_49 = FA1_49_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_48 = FA1_48_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_51 = FA1_51_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_50 = FA1_50_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_53 = FA1_53_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_52 = FA1_52_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_55 = FA1_55_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_54 = FA1_54_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_180 = {vec_s_55,vec_s_54,vec_s_53,vec_s_52,vec_s_51,vec_s_50,vec_s_49,vec_s_48}; // @[adder.CRA.scala 36:23]
  assign vec_s_57 = FA1_57_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_56 = FA1_56_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_59 = FA1_59_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_58 = FA1_58_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_61 = FA1_61_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_60 = FA1_60_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_63 = FA1_63_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign vec_s_62 = FA1_62_io_s; // @[adder.CRA.scala 35:34 adder.CRA.scala 35:34]
  assign _T_189 = {vec_s_63,vec_s_62,vec_s_61,vec_s_60,vec_s_59,vec_s_58,vec_s_57,vec_s_56,_T_180,_T_173}; // @[adder.CRA.scala 36:23]
  assign io_s = {_T_189,_T_158}; // @[adder.CRA.scala 36:8]
  assign io_cout = FA1_63_io_cout; // @[adder.CRA.scala 32:11]
  assign FA1_io_x = io_x[0]; // @[adder.CRA.scala 20:10]
  assign FA1_io_y = io_y[0]; // @[adder.CRA.scala 21:10]
  assign FA1_io_cin = io_cin; // @[adder.CRA.scala 31:21]
  assign FA1_1_io_x = io_x[1]; // @[adder.CRA.scala 20:10]
  assign FA1_1_io_y = io_y[1]; // @[adder.CRA.scala 21:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_2_io_x = io_x[2]; // @[adder.CRA.scala 20:10]
  assign FA1_2_io_y = io_y[2]; // @[adder.CRA.scala 21:10]
  assign FA1_2_io_cin = FA1_1_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_3_io_x = io_x[3]; // @[adder.CRA.scala 20:10]
  assign FA1_3_io_y = io_y[3]; // @[adder.CRA.scala 21:10]
  assign FA1_3_io_cin = FA1_2_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_4_io_x = io_x[4]; // @[adder.CRA.scala 20:10]
  assign FA1_4_io_y = io_y[4]; // @[adder.CRA.scala 21:10]
  assign FA1_4_io_cin = FA1_3_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_5_io_x = io_x[5]; // @[adder.CRA.scala 20:10]
  assign FA1_5_io_y = io_y[5]; // @[adder.CRA.scala 21:10]
  assign FA1_5_io_cin = FA1_4_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_6_io_x = io_x[6]; // @[adder.CRA.scala 20:10]
  assign FA1_6_io_y = io_y[6]; // @[adder.CRA.scala 21:10]
  assign FA1_6_io_cin = FA1_5_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_7_io_x = io_x[7]; // @[adder.CRA.scala 20:10]
  assign FA1_7_io_y = io_y[7]; // @[adder.CRA.scala 21:10]
  assign FA1_7_io_cin = FA1_6_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_8_io_x = io_x[8]; // @[adder.CRA.scala 20:10]
  assign FA1_8_io_y = io_y[8]; // @[adder.CRA.scala 21:10]
  assign FA1_8_io_cin = FA1_7_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_9_io_x = io_x[9]; // @[adder.CRA.scala 20:10]
  assign FA1_9_io_y = io_y[9]; // @[adder.CRA.scala 21:10]
  assign FA1_9_io_cin = FA1_8_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_10_io_x = io_x[10]; // @[adder.CRA.scala 20:10]
  assign FA1_10_io_y = io_y[10]; // @[adder.CRA.scala 21:10]
  assign FA1_10_io_cin = FA1_9_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_11_io_x = io_x[11]; // @[adder.CRA.scala 20:10]
  assign FA1_11_io_y = io_y[11]; // @[adder.CRA.scala 21:10]
  assign FA1_11_io_cin = FA1_10_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_12_io_x = io_x[12]; // @[adder.CRA.scala 20:10]
  assign FA1_12_io_y = io_y[12]; // @[adder.CRA.scala 21:10]
  assign FA1_12_io_cin = FA1_11_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_13_io_x = io_x[13]; // @[adder.CRA.scala 20:10]
  assign FA1_13_io_y = io_y[13]; // @[adder.CRA.scala 21:10]
  assign FA1_13_io_cin = FA1_12_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_14_io_x = io_x[14]; // @[adder.CRA.scala 20:10]
  assign FA1_14_io_y = io_y[14]; // @[adder.CRA.scala 21:10]
  assign FA1_14_io_cin = FA1_13_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_15_io_x = io_x[15]; // @[adder.CRA.scala 20:10]
  assign FA1_15_io_y = io_y[15]; // @[adder.CRA.scala 21:10]
  assign FA1_15_io_cin = FA1_14_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_16_io_x = io_x[16]; // @[adder.CRA.scala 20:10]
  assign FA1_16_io_y = io_y[16]; // @[adder.CRA.scala 21:10]
  assign FA1_16_io_cin = FA1_15_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_17_io_x = io_x[17]; // @[adder.CRA.scala 20:10]
  assign FA1_17_io_y = io_y[17]; // @[adder.CRA.scala 21:10]
  assign FA1_17_io_cin = FA1_16_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_18_io_x = io_x[18]; // @[adder.CRA.scala 20:10]
  assign FA1_18_io_y = io_y[18]; // @[adder.CRA.scala 21:10]
  assign FA1_18_io_cin = FA1_17_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_19_io_x = io_x[19]; // @[adder.CRA.scala 20:10]
  assign FA1_19_io_y = io_y[19]; // @[adder.CRA.scala 21:10]
  assign FA1_19_io_cin = FA1_18_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_20_io_x = io_x[20]; // @[adder.CRA.scala 20:10]
  assign FA1_20_io_y = io_y[20]; // @[adder.CRA.scala 21:10]
  assign FA1_20_io_cin = FA1_19_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_21_io_x = io_x[21]; // @[adder.CRA.scala 20:10]
  assign FA1_21_io_y = io_y[21]; // @[adder.CRA.scala 21:10]
  assign FA1_21_io_cin = FA1_20_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_22_io_x = io_x[22]; // @[adder.CRA.scala 20:10]
  assign FA1_22_io_y = io_y[22]; // @[adder.CRA.scala 21:10]
  assign FA1_22_io_cin = FA1_21_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_23_io_x = io_x[23]; // @[adder.CRA.scala 20:10]
  assign FA1_23_io_y = io_y[23]; // @[adder.CRA.scala 21:10]
  assign FA1_23_io_cin = FA1_22_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_24_io_x = io_x[24]; // @[adder.CRA.scala 20:10]
  assign FA1_24_io_y = io_y[24]; // @[adder.CRA.scala 21:10]
  assign FA1_24_io_cin = FA1_23_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_25_io_x = io_x[25]; // @[adder.CRA.scala 20:10]
  assign FA1_25_io_y = io_y[25]; // @[adder.CRA.scala 21:10]
  assign FA1_25_io_cin = FA1_24_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_26_io_x = io_x[26]; // @[adder.CRA.scala 20:10]
  assign FA1_26_io_y = io_y[26]; // @[adder.CRA.scala 21:10]
  assign FA1_26_io_cin = FA1_25_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_27_io_x = io_x[27]; // @[adder.CRA.scala 20:10]
  assign FA1_27_io_y = io_y[27]; // @[adder.CRA.scala 21:10]
  assign FA1_27_io_cin = FA1_26_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_28_io_x = io_x[28]; // @[adder.CRA.scala 20:10]
  assign FA1_28_io_y = io_y[28]; // @[adder.CRA.scala 21:10]
  assign FA1_28_io_cin = FA1_27_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_29_io_x = io_x[29]; // @[adder.CRA.scala 20:10]
  assign FA1_29_io_y = io_y[29]; // @[adder.CRA.scala 21:10]
  assign FA1_29_io_cin = FA1_28_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_30_io_x = io_x[30]; // @[adder.CRA.scala 20:10]
  assign FA1_30_io_y = io_y[30]; // @[adder.CRA.scala 21:10]
  assign FA1_30_io_cin = FA1_29_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_31_io_x = io_x[31]; // @[adder.CRA.scala 20:10]
  assign FA1_31_io_y = io_y[31]; // @[adder.CRA.scala 21:10]
  assign FA1_31_io_cin = FA1_30_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_32_io_x = io_x[32]; // @[adder.CRA.scala 20:10]
  assign FA1_32_io_y = io_y[32]; // @[adder.CRA.scala 21:10]
  assign FA1_32_io_cin = FA1_31_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_33_io_x = io_x[33]; // @[adder.CRA.scala 20:10]
  assign FA1_33_io_y = io_y[33]; // @[adder.CRA.scala 21:10]
  assign FA1_33_io_cin = FA1_32_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_34_io_x = io_x[34]; // @[adder.CRA.scala 20:10]
  assign FA1_34_io_y = io_y[34]; // @[adder.CRA.scala 21:10]
  assign FA1_34_io_cin = FA1_33_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_35_io_x = io_x[35]; // @[adder.CRA.scala 20:10]
  assign FA1_35_io_y = io_y[35]; // @[adder.CRA.scala 21:10]
  assign FA1_35_io_cin = FA1_34_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_36_io_x = io_x[36]; // @[adder.CRA.scala 20:10]
  assign FA1_36_io_y = io_y[36]; // @[adder.CRA.scala 21:10]
  assign FA1_36_io_cin = FA1_35_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_37_io_x = io_x[37]; // @[adder.CRA.scala 20:10]
  assign FA1_37_io_y = io_y[37]; // @[adder.CRA.scala 21:10]
  assign FA1_37_io_cin = FA1_36_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_38_io_x = io_x[38]; // @[adder.CRA.scala 20:10]
  assign FA1_38_io_y = io_y[38]; // @[adder.CRA.scala 21:10]
  assign FA1_38_io_cin = FA1_37_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_39_io_x = io_x[39]; // @[adder.CRA.scala 20:10]
  assign FA1_39_io_y = io_y[39]; // @[adder.CRA.scala 21:10]
  assign FA1_39_io_cin = FA1_38_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_40_io_x = io_x[40]; // @[adder.CRA.scala 20:10]
  assign FA1_40_io_y = io_y[40]; // @[adder.CRA.scala 21:10]
  assign FA1_40_io_cin = FA1_39_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_41_io_x = io_x[41]; // @[adder.CRA.scala 20:10]
  assign FA1_41_io_y = io_y[41]; // @[adder.CRA.scala 21:10]
  assign FA1_41_io_cin = FA1_40_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_42_io_x = io_x[42]; // @[adder.CRA.scala 20:10]
  assign FA1_42_io_y = io_y[42]; // @[adder.CRA.scala 21:10]
  assign FA1_42_io_cin = FA1_41_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_43_io_x = io_x[43]; // @[adder.CRA.scala 20:10]
  assign FA1_43_io_y = io_y[43]; // @[adder.CRA.scala 21:10]
  assign FA1_43_io_cin = FA1_42_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_44_io_x = io_x[44]; // @[adder.CRA.scala 20:10]
  assign FA1_44_io_y = io_y[44]; // @[adder.CRA.scala 21:10]
  assign FA1_44_io_cin = FA1_43_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_45_io_x = io_x[45]; // @[adder.CRA.scala 20:10]
  assign FA1_45_io_y = io_y[45]; // @[adder.CRA.scala 21:10]
  assign FA1_45_io_cin = FA1_44_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_46_io_x = io_x[46]; // @[adder.CRA.scala 20:10]
  assign FA1_46_io_y = io_y[46]; // @[adder.CRA.scala 21:10]
  assign FA1_46_io_cin = FA1_45_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_47_io_x = io_x[47]; // @[adder.CRA.scala 20:10]
  assign FA1_47_io_y = io_y[47]; // @[adder.CRA.scala 21:10]
  assign FA1_47_io_cin = FA1_46_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_48_io_x = io_x[48]; // @[adder.CRA.scala 20:10]
  assign FA1_48_io_y = io_y[48]; // @[adder.CRA.scala 21:10]
  assign FA1_48_io_cin = FA1_47_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_49_io_x = io_x[49]; // @[adder.CRA.scala 20:10]
  assign FA1_49_io_y = io_y[49]; // @[adder.CRA.scala 21:10]
  assign FA1_49_io_cin = FA1_48_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_50_io_x = io_x[50]; // @[adder.CRA.scala 20:10]
  assign FA1_50_io_y = io_y[50]; // @[adder.CRA.scala 21:10]
  assign FA1_50_io_cin = FA1_49_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_51_io_x = io_x[51]; // @[adder.CRA.scala 20:10]
  assign FA1_51_io_y = io_y[51]; // @[adder.CRA.scala 21:10]
  assign FA1_51_io_cin = FA1_50_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_52_io_x = io_x[52]; // @[adder.CRA.scala 20:10]
  assign FA1_52_io_y = io_y[52]; // @[adder.CRA.scala 21:10]
  assign FA1_52_io_cin = FA1_51_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_53_io_x = io_x[53]; // @[adder.CRA.scala 20:10]
  assign FA1_53_io_y = io_y[53]; // @[adder.CRA.scala 21:10]
  assign FA1_53_io_cin = FA1_52_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_54_io_x = io_x[54]; // @[adder.CRA.scala 20:10]
  assign FA1_54_io_y = io_y[54]; // @[adder.CRA.scala 21:10]
  assign FA1_54_io_cin = FA1_53_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_55_io_x = io_x[55]; // @[adder.CRA.scala 20:10]
  assign FA1_55_io_y = io_y[55]; // @[adder.CRA.scala 21:10]
  assign FA1_55_io_cin = FA1_54_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_56_io_x = io_x[56]; // @[adder.CRA.scala 20:10]
  assign FA1_56_io_y = io_y[56]; // @[adder.CRA.scala 21:10]
  assign FA1_56_io_cin = FA1_55_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_57_io_x = io_x[57]; // @[adder.CRA.scala 20:10]
  assign FA1_57_io_y = io_y[57]; // @[adder.CRA.scala 21:10]
  assign FA1_57_io_cin = FA1_56_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_58_io_x = io_x[58]; // @[adder.CRA.scala 20:10]
  assign FA1_58_io_y = io_y[58]; // @[adder.CRA.scala 21:10]
  assign FA1_58_io_cin = FA1_57_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_59_io_x = io_x[59]; // @[adder.CRA.scala 20:10]
  assign FA1_59_io_y = io_y[59]; // @[adder.CRA.scala 21:10]
  assign FA1_59_io_cin = FA1_58_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_60_io_x = io_x[60]; // @[adder.CRA.scala 20:10]
  assign FA1_60_io_y = io_y[60]; // @[adder.CRA.scala 21:10]
  assign FA1_60_io_cin = FA1_59_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_61_io_x = io_x[61]; // @[adder.CRA.scala 20:10]
  assign FA1_61_io_y = io_y[61]; // @[adder.CRA.scala 21:10]
  assign FA1_61_io_cin = FA1_60_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_62_io_x = io_x[62]; // @[adder.CRA.scala 20:10]
  assign FA1_62_io_y = io_y[62]; // @[adder.CRA.scala 21:10]
  assign FA1_62_io_cin = FA1_61_io_cout; // @[adder.CRA.scala 27:27]
  assign FA1_63_io_x = io_x[63]; // @[adder.CRA.scala 20:10]
  assign FA1_63_io_y = io_y[63]; // @[adder.CRA.scala 21:10]
  assign FA1_63_io_cin = FA1_62_io_cout; // @[adder.CRA.scala 27:27]
endmodule
