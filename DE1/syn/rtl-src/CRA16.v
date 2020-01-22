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
  input  [15:0] io_x,
  input  [15:0] io_y,
  input         io_cin,
  output [15:0] io_s,
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
  wire  vec_s_1; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_0; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_3; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_2; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_5; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_4; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_7; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_6; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [7:0] _T_38; // @[CRA.scala 36:23]
  wire  vec_s_9; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_8; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_11; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_10; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_13; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_12; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_15; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire  vec_s_14; // @[CRA.scala 35:34 CRA.scala 35:34]
  wire [7:0] _T_45; // @[CRA.scala 36:23]
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
  assign vec_s_1 = FA1_1_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_0 = FA1_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_3 = FA1_3_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_2 = FA1_2_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_5 = FA1_5_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_4 = FA1_4_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_7 = FA1_7_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_6 = FA1_6_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_38 = {vec_s_7,vec_s_6,vec_s_5,vec_s_4,vec_s_3,vec_s_2,vec_s_1,vec_s_0}; // @[CRA.scala 36:23]
  assign vec_s_9 = FA1_9_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_8 = FA1_8_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_11 = FA1_11_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_10 = FA1_10_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_13 = FA1_13_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_12 = FA1_12_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_15 = FA1_15_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign vec_s_14 = FA1_14_io_s; // @[CRA.scala 35:34 CRA.scala 35:34]
  assign _T_45 = {vec_s_15,vec_s_14,vec_s_13,vec_s_12,vec_s_11,vec_s_10,vec_s_9,vec_s_8}; // @[CRA.scala 36:23]
  assign io_s = {_T_45,_T_38}; // @[CRA.scala 36:8]
  assign io_cout = FA1_15_io_cout; // @[CRA.scala 32:11]
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
endmodule
