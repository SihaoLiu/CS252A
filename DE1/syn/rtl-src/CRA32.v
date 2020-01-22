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
module CRA(
  input         clock,
  input         reset,
  input  [31:0] io_x,
  input  [31:0] io_y,
  input         io_cin,
  output [31:0] io_s,
  output        io_cout
);
  wire  FA1_io_x; // @[CRA.scala 19:20]
  wire  FA1_io_y; // @[CRA.scala 19:20]
  wire  FA1_io_cin; // @[CRA.scala 19:20]
  wire  FA1_io_s; // @[CRA.scala 19:20]
  wire  FA1_io_cout; // @[CRA.scala 19:20]
  wire  FA1_1_io_x; // @[CRA.scala 19:20]
  wire  FA1_1_io_y; // @[CRA.scala 19:20]
  wire  FA1_1_io_cin; // @[CRA.scala 19:20]
  wire  FA1_1_io_s; // @[CRA.scala 19:20]
  wire  FA1_1_io_cout; // @[CRA.scala 19:20]
  wire  FA1_2_io_x; // @[CRA.scala 19:20]
  wire  FA1_2_io_y; // @[CRA.scala 19:20]
  wire  FA1_2_io_cin; // @[CRA.scala 19:20]
  wire  FA1_2_io_s; // @[CRA.scala 19:20]
  wire  FA1_2_io_cout; // @[CRA.scala 19:20]
  wire  FA1_3_io_x; // @[CRA.scala 19:20]
  wire  FA1_3_io_y; // @[CRA.scala 19:20]
  wire  FA1_3_io_cin; // @[CRA.scala 19:20]
  wire  FA1_3_io_s; // @[CRA.scala 19:20]
  wire  FA1_3_io_cout; // @[CRA.scala 19:20]
  wire  FA1_4_io_x; // @[CRA.scala 19:20]
  wire  FA1_4_io_y; // @[CRA.scala 19:20]
  wire  FA1_4_io_cin; // @[CRA.scala 19:20]
  wire  FA1_4_io_s; // @[CRA.scala 19:20]
  wire  FA1_4_io_cout; // @[CRA.scala 19:20]
  wire  FA1_5_io_x; // @[CRA.scala 19:20]
  wire  FA1_5_io_y; // @[CRA.scala 19:20]
  wire  FA1_5_io_cin; // @[CRA.scala 19:20]
  wire  FA1_5_io_s; // @[CRA.scala 19:20]
  wire  FA1_5_io_cout; // @[CRA.scala 19:20]
  wire  FA1_6_io_x; // @[CRA.scala 19:20]
  wire  FA1_6_io_y; // @[CRA.scala 19:20]
  wire  FA1_6_io_cin; // @[CRA.scala 19:20]
  wire  FA1_6_io_s; // @[CRA.scala 19:20]
  wire  FA1_6_io_cout; // @[CRA.scala 19:20]
  wire  FA1_7_io_x; // @[CRA.scala 19:20]
  wire  FA1_7_io_y; // @[CRA.scala 19:20]
  wire  FA1_7_io_cin; // @[CRA.scala 19:20]
  wire  FA1_7_io_s; // @[CRA.scala 19:20]
  wire  FA1_7_io_cout; // @[CRA.scala 19:20]
  wire  FA1_8_io_x; // @[CRA.scala 19:20]
  wire  FA1_8_io_y; // @[CRA.scala 19:20]
  wire  FA1_8_io_cin; // @[CRA.scala 19:20]
  wire  FA1_8_io_s; // @[CRA.scala 19:20]
  wire  FA1_8_io_cout; // @[CRA.scala 19:20]
  wire  FA1_9_io_x; // @[CRA.scala 19:20]
  wire  FA1_9_io_y; // @[CRA.scala 19:20]
  wire  FA1_9_io_cin; // @[CRA.scala 19:20]
  wire  FA1_9_io_s; // @[CRA.scala 19:20]
  wire  FA1_9_io_cout; // @[CRA.scala 19:20]
  wire  FA1_10_io_x; // @[CRA.scala 19:20]
  wire  FA1_10_io_y; // @[CRA.scala 19:20]
  wire  FA1_10_io_cin; // @[CRA.scala 19:20]
  wire  FA1_10_io_s; // @[CRA.scala 19:20]
  wire  FA1_10_io_cout; // @[CRA.scala 19:20]
  wire  FA1_11_io_x; // @[CRA.scala 19:20]
  wire  FA1_11_io_y; // @[CRA.scala 19:20]
  wire  FA1_11_io_cin; // @[CRA.scala 19:20]
  wire  FA1_11_io_s; // @[CRA.scala 19:20]
  wire  FA1_11_io_cout; // @[CRA.scala 19:20]
  wire  FA1_12_io_x; // @[CRA.scala 19:20]
  wire  FA1_12_io_y; // @[CRA.scala 19:20]
  wire  FA1_12_io_cin; // @[CRA.scala 19:20]
  wire  FA1_12_io_s; // @[CRA.scala 19:20]
  wire  FA1_12_io_cout; // @[CRA.scala 19:20]
  wire  FA1_13_io_x; // @[CRA.scala 19:20]
  wire  FA1_13_io_y; // @[CRA.scala 19:20]
  wire  FA1_13_io_cin; // @[CRA.scala 19:20]
  wire  FA1_13_io_s; // @[CRA.scala 19:20]
  wire  FA1_13_io_cout; // @[CRA.scala 19:20]
  wire  FA1_14_io_x; // @[CRA.scala 19:20]
  wire  FA1_14_io_y; // @[CRA.scala 19:20]
  wire  FA1_14_io_cin; // @[CRA.scala 19:20]
  wire  FA1_14_io_s; // @[CRA.scala 19:20]
  wire  FA1_14_io_cout; // @[CRA.scala 19:20]
  wire  FA1_15_io_x; // @[CRA.scala 19:20]
  wire  FA1_15_io_y; // @[CRA.scala 19:20]
  wire  FA1_15_io_cin; // @[CRA.scala 19:20]
  wire  FA1_15_io_s; // @[CRA.scala 19:20]
  wire  FA1_15_io_cout; // @[CRA.scala 19:20]
  wire  FA1_16_io_x; // @[CRA.scala 19:20]
  wire  FA1_16_io_y; // @[CRA.scala 19:20]
  wire  FA1_16_io_cin; // @[CRA.scala 19:20]
  wire  FA1_16_io_s; // @[CRA.scala 19:20]
  wire  FA1_16_io_cout; // @[CRA.scala 19:20]
  wire  FA1_17_io_x; // @[CRA.scala 19:20]
  wire  FA1_17_io_y; // @[CRA.scala 19:20]
  wire  FA1_17_io_cin; // @[CRA.scala 19:20]
  wire  FA1_17_io_s; // @[CRA.scala 19:20]
  wire  FA1_17_io_cout; // @[CRA.scala 19:20]
  wire  FA1_18_io_x; // @[CRA.scala 19:20]
  wire  FA1_18_io_y; // @[CRA.scala 19:20]
  wire  FA1_18_io_cin; // @[CRA.scala 19:20]
  wire  FA1_18_io_s; // @[CRA.scala 19:20]
  wire  FA1_18_io_cout; // @[CRA.scala 19:20]
  wire  FA1_19_io_x; // @[CRA.scala 19:20]
  wire  FA1_19_io_y; // @[CRA.scala 19:20]
  wire  FA1_19_io_cin; // @[CRA.scala 19:20]
  wire  FA1_19_io_s; // @[CRA.scala 19:20]
  wire  FA1_19_io_cout; // @[CRA.scala 19:20]
  wire  FA1_20_io_x; // @[CRA.scala 19:20]
  wire  FA1_20_io_y; // @[CRA.scala 19:20]
  wire  FA1_20_io_cin; // @[CRA.scala 19:20]
  wire  FA1_20_io_s; // @[CRA.scala 19:20]
  wire  FA1_20_io_cout; // @[CRA.scala 19:20]
  wire  FA1_21_io_x; // @[CRA.scala 19:20]
  wire  FA1_21_io_y; // @[CRA.scala 19:20]
  wire  FA1_21_io_cin; // @[CRA.scala 19:20]
  wire  FA1_21_io_s; // @[CRA.scala 19:20]
  wire  FA1_21_io_cout; // @[CRA.scala 19:20]
  wire  FA1_22_io_x; // @[CRA.scala 19:20]
  wire  FA1_22_io_y; // @[CRA.scala 19:20]
  wire  FA1_22_io_cin; // @[CRA.scala 19:20]
  wire  FA1_22_io_s; // @[CRA.scala 19:20]
  wire  FA1_22_io_cout; // @[CRA.scala 19:20]
  wire  FA1_23_io_x; // @[CRA.scala 19:20]
  wire  FA1_23_io_y; // @[CRA.scala 19:20]
  wire  FA1_23_io_cin; // @[CRA.scala 19:20]
  wire  FA1_23_io_s; // @[CRA.scala 19:20]
  wire  FA1_23_io_cout; // @[CRA.scala 19:20]
  wire  FA1_24_io_x; // @[CRA.scala 19:20]
  wire  FA1_24_io_y; // @[CRA.scala 19:20]
  wire  FA1_24_io_cin; // @[CRA.scala 19:20]
  wire  FA1_24_io_s; // @[CRA.scala 19:20]
  wire  FA1_24_io_cout; // @[CRA.scala 19:20]
  wire  FA1_25_io_x; // @[CRA.scala 19:20]
  wire  FA1_25_io_y; // @[CRA.scala 19:20]
  wire  FA1_25_io_cin; // @[CRA.scala 19:20]
  wire  FA1_25_io_s; // @[CRA.scala 19:20]
  wire  FA1_25_io_cout; // @[CRA.scala 19:20]
  wire  FA1_26_io_x; // @[CRA.scala 19:20]
  wire  FA1_26_io_y; // @[CRA.scala 19:20]
  wire  FA1_26_io_cin; // @[CRA.scala 19:20]
  wire  FA1_26_io_s; // @[CRA.scala 19:20]
  wire  FA1_26_io_cout; // @[CRA.scala 19:20]
  wire  FA1_27_io_x; // @[CRA.scala 19:20]
  wire  FA1_27_io_y; // @[CRA.scala 19:20]
  wire  FA1_27_io_cin; // @[CRA.scala 19:20]
  wire  FA1_27_io_s; // @[CRA.scala 19:20]
  wire  FA1_27_io_cout; // @[CRA.scala 19:20]
  wire  FA1_28_io_x; // @[CRA.scala 19:20]
  wire  FA1_28_io_y; // @[CRA.scala 19:20]
  wire  FA1_28_io_cin; // @[CRA.scala 19:20]
  wire  FA1_28_io_s; // @[CRA.scala 19:20]
  wire  FA1_28_io_cout; // @[CRA.scala 19:20]
  wire  FA1_29_io_x; // @[CRA.scala 19:20]
  wire  FA1_29_io_y; // @[CRA.scala 19:20]
  wire  FA1_29_io_cin; // @[CRA.scala 19:20]
  wire  FA1_29_io_s; // @[CRA.scala 19:20]
  wire  FA1_29_io_cout; // @[CRA.scala 19:20]
  wire  FA1_30_io_x; // @[CRA.scala 19:20]
  wire  FA1_30_io_y; // @[CRA.scala 19:20]
  wire  FA1_30_io_cin; // @[CRA.scala 19:20]
  wire  FA1_30_io_s; // @[CRA.scala 19:20]
  wire  FA1_30_io_cout; // @[CRA.scala 19:20]
  wire  FA1_31_io_x; // @[CRA.scala 19:20]
  wire  FA1_31_io_y; // @[CRA.scala 19:20]
  wire  FA1_31_io_cin; // @[CRA.scala 19:20]
  wire  FA1_31_io_s; // @[CRA.scala 19:20]
  wire  FA1_31_io_cout; // @[CRA.scala 19:20]
  wire  vec_s_1; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_0; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_3; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_2; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_5; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_4; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_7; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_6; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [7:0] _T_70; // @[CRA.scala 36:23]
  wire  vec_s_9; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_8; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_11; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_10; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_13; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_12; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_15; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_14; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [15:0] _T_78; // @[CRA.scala 36:23]
  wire  vec_s_17; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_16; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_19; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_18; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_21; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_20; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_23; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_22; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [7:0] _T_85; // @[CRA.scala 36:23]
  wire  vec_s_25; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_24; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_27; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_26; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_29; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_28; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_31; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_30; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [15:0] _T_93; // @[CRA.scala 36:23]
  FA1 FA1 ( // @[CRA.scala 19:20]
    .io_x(FA1_io_x),
    .io_y(FA1_io_y),
    .io_cin(FA1_io_cin),
    .io_s(FA1_io_s),
    .io_cout(FA1_io_cout)
  );
  FA1 FA1_1 ( // @[CRA.scala 19:20]
    .io_x(FA1_1_io_x),
    .io_y(FA1_1_io_y),
    .io_cin(FA1_1_io_cin),
    .io_s(FA1_1_io_s),
    .io_cout(FA1_1_io_cout)
  );
  FA1 FA1_2 ( // @[CRA.scala 19:20]
    .io_x(FA1_2_io_x),
    .io_y(FA1_2_io_y),
    .io_cin(FA1_2_io_cin),
    .io_s(FA1_2_io_s),
    .io_cout(FA1_2_io_cout)
  );
  FA1 FA1_3 ( // @[CRA.scala 19:20]
    .io_x(FA1_3_io_x),
    .io_y(FA1_3_io_y),
    .io_cin(FA1_3_io_cin),
    .io_s(FA1_3_io_s),
    .io_cout(FA1_3_io_cout)
  );
  FA1 FA1_4 ( // @[CRA.scala 19:20]
    .io_x(FA1_4_io_x),
    .io_y(FA1_4_io_y),
    .io_cin(FA1_4_io_cin),
    .io_s(FA1_4_io_s),
    .io_cout(FA1_4_io_cout)
  );
  FA1 FA1_5 ( // @[CRA.scala 19:20]
    .io_x(FA1_5_io_x),
    .io_y(FA1_5_io_y),
    .io_cin(FA1_5_io_cin),
    .io_s(FA1_5_io_s),
    .io_cout(FA1_5_io_cout)
  );
  FA1 FA1_6 ( // @[CRA.scala 19:20]
    .io_x(FA1_6_io_x),
    .io_y(FA1_6_io_y),
    .io_cin(FA1_6_io_cin),
    .io_s(FA1_6_io_s),
    .io_cout(FA1_6_io_cout)
  );
  FA1 FA1_7 ( // @[CRA.scala 19:20]
    .io_x(FA1_7_io_x),
    .io_y(FA1_7_io_y),
    .io_cin(FA1_7_io_cin),
    .io_s(FA1_7_io_s),
    .io_cout(FA1_7_io_cout)
  );
  FA1 FA1_8 ( // @[CRA.scala 19:20]
    .io_x(FA1_8_io_x),
    .io_y(FA1_8_io_y),
    .io_cin(FA1_8_io_cin),
    .io_s(FA1_8_io_s),
    .io_cout(FA1_8_io_cout)
  );
  FA1 FA1_9 ( // @[CRA.scala 19:20]
    .io_x(FA1_9_io_x),
    .io_y(FA1_9_io_y),
    .io_cin(FA1_9_io_cin),
    .io_s(FA1_9_io_s),
    .io_cout(FA1_9_io_cout)
  );
  FA1 FA1_10 ( // @[CRA.scala 19:20]
    .io_x(FA1_10_io_x),
    .io_y(FA1_10_io_y),
    .io_cin(FA1_10_io_cin),
    .io_s(FA1_10_io_s),
    .io_cout(FA1_10_io_cout)
  );
  FA1 FA1_11 ( // @[CRA.scala 19:20]
    .io_x(FA1_11_io_x),
    .io_y(FA1_11_io_y),
    .io_cin(FA1_11_io_cin),
    .io_s(FA1_11_io_s),
    .io_cout(FA1_11_io_cout)
  );
  FA1 FA1_12 ( // @[CRA.scala 19:20]
    .io_x(FA1_12_io_x),
    .io_y(FA1_12_io_y),
    .io_cin(FA1_12_io_cin),
    .io_s(FA1_12_io_s),
    .io_cout(FA1_12_io_cout)
  );
  FA1 FA1_13 ( // @[CRA.scala 19:20]
    .io_x(FA1_13_io_x),
    .io_y(FA1_13_io_y),
    .io_cin(FA1_13_io_cin),
    .io_s(FA1_13_io_s),
    .io_cout(FA1_13_io_cout)
  );
  FA1 FA1_14 ( // @[CRA.scala 19:20]
    .io_x(FA1_14_io_x),
    .io_y(FA1_14_io_y),
    .io_cin(FA1_14_io_cin),
    .io_s(FA1_14_io_s),
    .io_cout(FA1_14_io_cout)
  );
  FA1 FA1_15 ( // @[CRA.scala 19:20]
    .io_x(FA1_15_io_x),
    .io_y(FA1_15_io_y),
    .io_cin(FA1_15_io_cin),
    .io_s(FA1_15_io_s),
    .io_cout(FA1_15_io_cout)
  );
  FA1 FA1_16 ( // @[CRA.scala 19:20]
    .io_x(FA1_16_io_x),
    .io_y(FA1_16_io_y),
    .io_cin(FA1_16_io_cin),
    .io_s(FA1_16_io_s),
    .io_cout(FA1_16_io_cout)
  );
  FA1 FA1_17 ( // @[CRA.scala 19:20]
    .io_x(FA1_17_io_x),
    .io_y(FA1_17_io_y),
    .io_cin(FA1_17_io_cin),
    .io_s(FA1_17_io_s),
    .io_cout(FA1_17_io_cout)
  );
  FA1 FA1_18 ( // @[CRA.scala 19:20]
    .io_x(FA1_18_io_x),
    .io_y(FA1_18_io_y),
    .io_cin(FA1_18_io_cin),
    .io_s(FA1_18_io_s),
    .io_cout(FA1_18_io_cout)
  );
  FA1 FA1_19 ( // @[CRA.scala 19:20]
    .io_x(FA1_19_io_x),
    .io_y(FA1_19_io_y),
    .io_cin(FA1_19_io_cin),
    .io_s(FA1_19_io_s),
    .io_cout(FA1_19_io_cout)
  );
  FA1 FA1_20 ( // @[CRA.scala 19:20]
    .io_x(FA1_20_io_x),
    .io_y(FA1_20_io_y),
    .io_cin(FA1_20_io_cin),
    .io_s(FA1_20_io_s),
    .io_cout(FA1_20_io_cout)
  );
  FA1 FA1_21 ( // @[CRA.scala 19:20]
    .io_x(FA1_21_io_x),
    .io_y(FA1_21_io_y),
    .io_cin(FA1_21_io_cin),
    .io_s(FA1_21_io_s),
    .io_cout(FA1_21_io_cout)
  );
  FA1 FA1_22 ( // @[CRA.scala 19:20]
    .io_x(FA1_22_io_x),
    .io_y(FA1_22_io_y),
    .io_cin(FA1_22_io_cin),
    .io_s(FA1_22_io_s),
    .io_cout(FA1_22_io_cout)
  );
  FA1 FA1_23 ( // @[CRA.scala 19:20]
    .io_x(FA1_23_io_x),
    .io_y(FA1_23_io_y),
    .io_cin(FA1_23_io_cin),
    .io_s(FA1_23_io_s),
    .io_cout(FA1_23_io_cout)
  );
  FA1 FA1_24 ( // @[CRA.scala 19:20]
    .io_x(FA1_24_io_x),
    .io_y(FA1_24_io_y),
    .io_cin(FA1_24_io_cin),
    .io_s(FA1_24_io_s),
    .io_cout(FA1_24_io_cout)
  );
  FA1 FA1_25 ( // @[CRA.scala 19:20]
    .io_x(FA1_25_io_x),
    .io_y(FA1_25_io_y),
    .io_cin(FA1_25_io_cin),
    .io_s(FA1_25_io_s),
    .io_cout(FA1_25_io_cout)
  );
  FA1 FA1_26 ( // @[CRA.scala 19:20]
    .io_x(FA1_26_io_x),
    .io_y(FA1_26_io_y),
    .io_cin(FA1_26_io_cin),
    .io_s(FA1_26_io_s),
    .io_cout(FA1_26_io_cout)
  );
  FA1 FA1_27 ( // @[CRA.scala 19:20]
    .io_x(FA1_27_io_x),
    .io_y(FA1_27_io_y),
    .io_cin(FA1_27_io_cin),
    .io_s(FA1_27_io_s),
    .io_cout(FA1_27_io_cout)
  );
  FA1 FA1_28 ( // @[CRA.scala 19:20]
    .io_x(FA1_28_io_x),
    .io_y(FA1_28_io_y),
    .io_cin(FA1_28_io_cin),
    .io_s(FA1_28_io_s),
    .io_cout(FA1_28_io_cout)
  );
  FA1 FA1_29 ( // @[CRA.scala 19:20]
    .io_x(FA1_29_io_x),
    .io_y(FA1_29_io_y),
    .io_cin(FA1_29_io_cin),
    .io_s(FA1_29_io_s),
    .io_cout(FA1_29_io_cout)
  );
  FA1 FA1_30 ( // @[CRA.scala 19:20]
    .io_x(FA1_30_io_x),
    .io_y(FA1_30_io_y),
    .io_cin(FA1_30_io_cin),
    .io_s(FA1_30_io_s),
    .io_cout(FA1_30_io_cout)
  );
  FA1 FA1_31 ( // @[CRA.scala 19:20]
    .io_x(FA1_31_io_x),
    .io_y(FA1_31_io_y),
    .io_cin(FA1_31_io_cin),
    .io_s(FA1_31_io_s),
    .io_cout(FA1_31_io_cout)
  );
  assign vec_s_1 = FA1_1_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_0 = FA1_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_3 = FA1_3_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_2 = FA1_2_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_5 = FA1_5_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_4 = FA1_4_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_7 = FA1_7_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_6 = FA1_6_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_70 = {vec_s_7,vec_s_6,vec_s_5,vec_s_4,vec_s_3,vec_s_2,vec_s_1,vec_s_0}; // @[CRA.scala 36:23]
  assign vec_s_9 = FA1_9_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_8 = FA1_8_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_11 = FA1_11_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_10 = FA1_10_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_13 = FA1_13_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_12 = FA1_12_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_15 = FA1_15_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_14 = FA1_14_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_78 = {vec_s_15,vec_s_14,vec_s_13,vec_s_12,vec_s_11,vec_s_10,vec_s_9,vec_s_8,_T_70}; // @[CRA.scala 36:23]
  assign vec_s_17 = FA1_17_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_16 = FA1_16_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_19 = FA1_19_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_18 = FA1_18_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_21 = FA1_21_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_20 = FA1_20_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_23 = FA1_23_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_22 = FA1_22_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_85 = {vec_s_23,vec_s_22,vec_s_21,vec_s_20,vec_s_19,vec_s_18,vec_s_17,vec_s_16}; // @[CRA.scala 36:23]
  assign vec_s_25 = FA1_25_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_24 = FA1_24_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_27 = FA1_27_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_26 = FA1_26_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_29 = FA1_29_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_28 = FA1_28_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_31 = FA1_31_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_30 = FA1_30_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_93 = {vec_s_31,vec_s_30,vec_s_29,vec_s_28,vec_s_27,vec_s_26,vec_s_25,vec_s_24,_T_85}; // @[CRA.scala 36:23]
  assign io_s = {_T_93,_T_78}; // @[CRA.scala 36:8]
  assign io_cout = FA1_31_io_cout; // @[CRA.scala 32:11]
  assign FA1_io_x = io_x[0]; // @[CRA.scala 20:10]
  assign FA1_io_y = io_y[0]; // @[CRA.scala 21:10]
  assign FA1_io_cin = io_cin; // @[CRA.scala 31:21]
  assign FA1_1_io_x = io_x[1]; // @[CRA.scala 20:10]
  assign FA1_1_io_y = io_y[1]; // @[CRA.scala 21:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[CRA.scala 27:27]
  assign FA1_2_io_x = io_x[2]; // @[CRA.scala 20:10]
  assign FA1_2_io_y = io_y[2]; // @[CRA.scala 21:10]
  assign FA1_2_io_cin = FA1_1_io_cout; // @[CRA.scala 27:27]
  assign FA1_3_io_x = io_x[3]; // @[CRA.scala 20:10]
  assign FA1_3_io_y = io_y[3]; // @[CRA.scala 21:10]
  assign FA1_3_io_cin = FA1_2_io_cout; // @[CRA.scala 27:27]
  assign FA1_4_io_x = io_x[4]; // @[CRA.scala 20:10]
  assign FA1_4_io_y = io_y[4]; // @[CRA.scala 21:10]
  assign FA1_4_io_cin = FA1_3_io_cout; // @[CRA.scala 27:27]
  assign FA1_5_io_x = io_x[5]; // @[CRA.scala 20:10]
  assign FA1_5_io_y = io_y[5]; // @[CRA.scala 21:10]
  assign FA1_5_io_cin = FA1_4_io_cout; // @[CRA.scala 27:27]
  assign FA1_6_io_x = io_x[6]; // @[CRA.scala 20:10]
  assign FA1_6_io_y = io_y[6]; // @[CRA.scala 21:10]
  assign FA1_6_io_cin = FA1_5_io_cout; // @[CRA.scala 27:27]
  assign FA1_7_io_x = io_x[7]; // @[CRA.scala 20:10]
  assign FA1_7_io_y = io_y[7]; // @[CRA.scala 21:10]
  assign FA1_7_io_cin = FA1_6_io_cout; // @[CRA.scala 27:27]
  assign FA1_8_io_x = io_x[8]; // @[CRA.scala 20:10]
  assign FA1_8_io_y = io_y[8]; // @[CRA.scala 21:10]
  assign FA1_8_io_cin = FA1_7_io_cout; // @[CRA.scala 27:27]
  assign FA1_9_io_x = io_x[9]; // @[CRA.scala 20:10]
  assign FA1_9_io_y = io_y[9]; // @[CRA.scala 21:10]
  assign FA1_9_io_cin = FA1_8_io_cout; // @[CRA.scala 27:27]
  assign FA1_10_io_x = io_x[10]; // @[CRA.scala 20:10]
  assign FA1_10_io_y = io_y[10]; // @[CRA.scala 21:10]
  assign FA1_10_io_cin = FA1_9_io_cout; // @[CRA.scala 27:27]
  assign FA1_11_io_x = io_x[11]; // @[CRA.scala 20:10]
  assign FA1_11_io_y = io_y[11]; // @[CRA.scala 21:10]
  assign FA1_11_io_cin = FA1_10_io_cout; // @[CRA.scala 27:27]
  assign FA1_12_io_x = io_x[12]; // @[CRA.scala 20:10]
  assign FA1_12_io_y = io_y[12]; // @[CRA.scala 21:10]
  assign FA1_12_io_cin = FA1_11_io_cout; // @[CRA.scala 27:27]
  assign FA1_13_io_x = io_x[13]; // @[CRA.scala 20:10]
  assign FA1_13_io_y = io_y[13]; // @[CRA.scala 21:10]
  assign FA1_13_io_cin = FA1_12_io_cout; // @[CRA.scala 27:27]
  assign FA1_14_io_x = io_x[14]; // @[CRA.scala 20:10]
  assign FA1_14_io_y = io_y[14]; // @[CRA.scala 21:10]
  assign FA1_14_io_cin = FA1_13_io_cout; // @[CRA.scala 27:27]
  assign FA1_15_io_x = io_x[15]; // @[CRA.scala 20:10]
  assign FA1_15_io_y = io_y[15]; // @[CRA.scala 21:10]
  assign FA1_15_io_cin = FA1_14_io_cout; // @[CRA.scala 27:27]
  assign FA1_16_io_x = io_x[16]; // @[CRA.scala 20:10]
  assign FA1_16_io_y = io_y[16]; // @[CRA.scala 21:10]
  assign FA1_16_io_cin = FA1_15_io_cout; // @[CRA.scala 27:27]
  assign FA1_17_io_x = io_x[17]; // @[CRA.scala 20:10]
  assign FA1_17_io_y = io_y[17]; // @[CRA.scala 21:10]
  assign FA1_17_io_cin = FA1_16_io_cout; // @[CRA.scala 27:27]
  assign FA1_18_io_x = io_x[18]; // @[CRA.scala 20:10]
  assign FA1_18_io_y = io_y[18]; // @[CRA.scala 21:10]
  assign FA1_18_io_cin = FA1_17_io_cout; // @[CRA.scala 27:27]
  assign FA1_19_io_x = io_x[19]; // @[CRA.scala 20:10]
  assign FA1_19_io_y = io_y[19]; // @[CRA.scala 21:10]
  assign FA1_19_io_cin = FA1_18_io_cout; // @[CRA.scala 27:27]
  assign FA1_20_io_x = io_x[20]; // @[CRA.scala 20:10]
  assign FA1_20_io_y = io_y[20]; // @[CRA.scala 21:10]
  assign FA1_20_io_cin = FA1_19_io_cout; // @[CRA.scala 27:27]
  assign FA1_21_io_x = io_x[21]; // @[CRA.scala 20:10]
  assign FA1_21_io_y = io_y[21]; // @[CRA.scala 21:10]
  assign FA1_21_io_cin = FA1_20_io_cout; // @[CRA.scala 27:27]
  assign FA1_22_io_x = io_x[22]; // @[CRA.scala 20:10]
  assign FA1_22_io_y = io_y[22]; // @[CRA.scala 21:10]
  assign FA1_22_io_cin = FA1_21_io_cout; // @[CRA.scala 27:27]
  assign FA1_23_io_x = io_x[23]; // @[CRA.scala 20:10]
  assign FA1_23_io_y = io_y[23]; // @[CRA.scala 21:10]
  assign FA1_23_io_cin = FA1_22_io_cout; // @[CRA.scala 27:27]
  assign FA1_24_io_x = io_x[24]; // @[CRA.scala 20:10]
  assign FA1_24_io_y = io_y[24]; // @[CRA.scala 21:10]
  assign FA1_24_io_cin = FA1_23_io_cout; // @[CRA.scala 27:27]
  assign FA1_25_io_x = io_x[25]; // @[CRA.scala 20:10]
  assign FA1_25_io_y = io_y[25]; // @[CRA.scala 21:10]
  assign FA1_25_io_cin = FA1_24_io_cout; // @[CRA.scala 27:27]
  assign FA1_26_io_x = io_x[26]; // @[CRA.scala 20:10]
  assign FA1_26_io_y = io_y[26]; // @[CRA.scala 21:10]
  assign FA1_26_io_cin = FA1_25_io_cout; // @[CRA.scala 27:27]
  assign FA1_27_io_x = io_x[27]; // @[CRA.scala 20:10]
  assign FA1_27_io_y = io_y[27]; // @[CRA.scala 21:10]
  assign FA1_27_io_cin = FA1_26_io_cout; // @[CRA.scala 27:27]
  assign FA1_28_io_x = io_x[28]; // @[CRA.scala 20:10]
  assign FA1_28_io_y = io_y[28]; // @[CRA.scala 21:10]
  assign FA1_28_io_cin = FA1_27_io_cout; // @[CRA.scala 27:27]
  assign FA1_29_io_x = io_x[29]; // @[CRA.scala 20:10]
  assign FA1_29_io_y = io_y[29]; // @[CRA.scala 21:10]
  assign FA1_29_io_cin = FA1_28_io_cout; // @[CRA.scala 27:27]
  assign FA1_30_io_x = io_x[30]; // @[CRA.scala 20:10]
  assign FA1_30_io_y = io_y[30]; // @[CRA.scala 21:10]
  assign FA1_30_io_cin = FA1_29_io_cout; // @[CRA.scala 27:27]
  assign FA1_31_io_x = io_x[31]; // @[CRA.scala 20:10]
  assign FA1_31_io_y = io_y[31]; // @[CRA.scala 21:10]
  assign FA1_31_io_cin = FA1_30_io_cout; // @[CRA.scala 27:27]
endmodule
