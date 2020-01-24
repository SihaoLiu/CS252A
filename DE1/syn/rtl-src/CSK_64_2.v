module FA1(
  input   io_x,
  input   io_y,
  input   io_cin,
  output  io_s,
  output  io_cout,
  output  io_p
);
  wire  p; // @[FA1.scala 20:23]
  wire  g; // @[FA1.scala 21:23]
  wire  _T_1; // @[FA1.scala 27:21]
  assign p = io_x ^ io_y; // @[FA1.scala 20:23]
  assign g = io_x & io_y; // @[FA1.scala 21:23]
  assign _T_1 = p & io_cin; // @[FA1.scala 27:21]
  assign io_s = p ^ io_cin; // @[FA1.scala 24:8]
  assign io_cout = g | _T_1; // @[FA1.scala 27:11]
  assign io_p = io_x ^ io_y; // @[FA1.scala 31:8]
endmodule
module adder.CRA(
  input  [1:0] io_x,
  input  [1:0] io_y,
  input        io_cin,
  output [1:0] io_s,
  output       io_cout,
  output [1:0] io_p
);
  wire  FA1_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_1_io_p; // @[adder.CRA.scala 22:20]
  wire  _T_4_1; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_4_0; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_8_1; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_8_0; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  FA1 FA1 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_io_x),
    .io_y(FA1_io_y),
    .io_cin(FA1_io_cin),
    .io_s(FA1_io_s),
    .io_cout(FA1_io_cout),
    .io_p(FA1_io_p)
  );
  FA1 FA1_1 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_1_io_x),
    .io_y(FA1_1_io_y),
    .io_cin(FA1_1_io_cin),
    .io_s(FA1_1_io_s),
    .io_cout(FA1_1_io_cout),
    .io_p(FA1_1_io_p)
  );
  assign _T_4_1 = FA1_1_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_4_0 = FA1_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_8_1 = FA1_1_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_8_0 = FA1_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign io_s = {_T_4_1,_T_4_0}; // @[adder.CRA.scala 38:8]
  assign io_cout = FA1_1_io_cout; // @[adder.CRA.scala 35:11]
  assign io_p = {_T_8_1,_T_8_0}; // @[adder.CRA.scala 42:8]
  assign FA1_io_x = io_x[0]; // @[adder.CRA.scala 23:10]
  assign FA1_io_y = io_y[0]; // @[adder.CRA.scala 24:10]
  assign FA1_io_cin = io_cin; // @[adder.CRA.scala 34:21]
  assign FA1_1_io_x = io_x[1]; // @[adder.CRA.scala 23:10]
  assign FA1_1_io_y = io_y[1]; // @[adder.CRA.scala 24:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[adder.CRA.scala 30:27]
endmodule
module adder.CSK(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  input         io_cin,
  output [63:0] io_s,
  output        io_cout
);
  wire [1:0] CRA_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_1_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_1_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_1_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_1_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_1_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_1_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_2_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_2_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_2_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_2_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_2_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_2_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_3_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_3_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_3_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_3_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_3_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_3_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_4_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_4_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_4_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_4_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_4_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_4_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_5_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_5_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_5_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_5_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_5_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_5_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_6_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_6_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_6_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_6_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_6_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_6_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_7_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_7_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_7_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_7_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_7_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_7_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_8_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_8_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_8_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_8_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_8_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_8_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_9_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_9_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_9_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_9_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_9_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_9_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_10_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_10_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_10_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_10_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_10_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_10_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_11_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_11_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_11_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_11_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_11_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_11_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_12_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_12_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_12_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_12_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_12_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_12_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_13_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_13_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_13_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_13_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_13_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_13_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_14_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_14_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_14_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_14_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_14_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_14_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_15_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_15_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_15_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_15_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_15_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_15_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_16_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_16_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_16_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_16_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_16_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_16_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_17_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_17_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_17_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_17_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_17_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_17_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_18_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_18_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_18_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_18_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_18_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_18_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_19_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_19_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_19_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_19_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_19_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_19_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_20_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_20_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_20_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_20_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_20_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_20_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_21_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_21_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_21_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_21_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_21_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_21_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_22_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_22_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_22_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_22_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_22_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_22_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_23_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_23_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_23_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_23_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_23_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_23_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_24_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_24_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_24_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_24_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_24_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_24_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_25_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_25_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_25_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_25_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_25_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_25_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_26_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_26_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_26_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_26_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_26_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_26_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_27_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_27_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_27_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_27_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_27_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_27_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_28_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_28_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_28_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_28_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_28_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_28_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_29_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_29_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_29_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_29_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_29_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_29_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_30_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_30_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_30_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_30_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_30_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_30_io_p; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_31_io_x; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_31_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_31_io_cin; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_31_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_31_io_cout; // @[adder.CSK.scala 21:21]
  wire [1:0] CRA_31_io_p; // @[adder.CSK.scala 21:21]
  wire  _T_64; // @[adder.CSK.scala 36:28]
  wire  _T_65; // @[adder.CSK.scala 43:37]
  wire  _T_67; // @[adder.CSK.scala 36:28]
  wire  _T_68; // @[adder.CSK.scala 47:37]
  wire  _T_70; // @[adder.CSK.scala 36:28]
  wire  _T_71; // @[adder.CSK.scala 47:37]
  wire  _T_73; // @[adder.CSK.scala 36:28]
  wire  _T_74; // @[adder.CSK.scala 47:37]
  wire  _T_76; // @[adder.CSK.scala 36:28]
  wire  _T_77; // @[adder.CSK.scala 47:37]
  wire  _T_79; // @[adder.CSK.scala 36:28]
  wire  _T_80; // @[adder.CSK.scala 47:37]
  wire  _T_82; // @[adder.CSK.scala 36:28]
  wire  _T_83; // @[adder.CSK.scala 47:37]
  wire  _T_85; // @[adder.CSK.scala 36:28]
  wire  _T_86; // @[adder.CSK.scala 47:37]
  wire  _T_88; // @[adder.CSK.scala 36:28]
  wire  _T_89; // @[adder.CSK.scala 47:37]
  wire  _T_91; // @[adder.CSK.scala 36:28]
  wire  _T_92; // @[adder.CSK.scala 47:37]
  wire  _T_94; // @[adder.CSK.scala 36:28]
  wire  _T_95; // @[adder.CSK.scala 47:37]
  wire  _T_97; // @[adder.CSK.scala 36:28]
  wire  _T_98; // @[adder.CSK.scala 47:37]
  wire  _T_100; // @[adder.CSK.scala 36:28]
  wire  _T_101; // @[adder.CSK.scala 47:37]
  wire  _T_103; // @[adder.CSK.scala 36:28]
  wire  _T_104; // @[adder.CSK.scala 47:37]
  wire  _T_106; // @[adder.CSK.scala 36:28]
  wire  _T_107; // @[adder.CSK.scala 47:37]
  wire  _T_109; // @[adder.CSK.scala 36:28]
  wire  _T_110; // @[adder.CSK.scala 47:37]
  wire  _T_112; // @[adder.CSK.scala 36:28]
  wire  _T_113; // @[adder.CSK.scala 47:37]
  wire  _T_115; // @[adder.CSK.scala 36:28]
  wire  _T_116; // @[adder.CSK.scala 47:37]
  wire  _T_118; // @[adder.CSK.scala 36:28]
  wire  _T_119; // @[adder.CSK.scala 47:37]
  wire  _T_121; // @[adder.CSK.scala 36:28]
  wire  _T_122; // @[adder.CSK.scala 47:37]
  wire  _T_124; // @[adder.CSK.scala 36:28]
  wire  _T_125; // @[adder.CSK.scala 47:37]
  wire  _T_127; // @[adder.CSK.scala 36:28]
  wire  _T_128; // @[adder.CSK.scala 47:37]
  wire  _T_130; // @[adder.CSK.scala 36:28]
  wire  _T_131; // @[adder.CSK.scala 47:37]
  wire  _T_133; // @[adder.CSK.scala 36:28]
  wire  _T_134; // @[adder.CSK.scala 47:37]
  wire  _T_136; // @[adder.CSK.scala 36:28]
  wire  _T_137; // @[adder.CSK.scala 47:37]
  wire  _T_139; // @[adder.CSK.scala 36:28]
  wire  _T_140; // @[adder.CSK.scala 47:37]
  wire  _T_142; // @[adder.CSK.scala 36:28]
  wire  _T_143; // @[adder.CSK.scala 47:37]
  wire  _T_145; // @[adder.CSK.scala 36:28]
  wire  _T_146; // @[adder.CSK.scala 47:37]
  wire  _T_148; // @[adder.CSK.scala 36:28]
  wire  _T_149; // @[adder.CSK.scala 47:37]
  wire  _T_151; // @[adder.CSK.scala 36:28]
  wire  _T_152; // @[adder.CSK.scala 47:37]
  wire  _T_154; // @[adder.CSK.scala 36:28]
  wire  _T_155; // @[adder.CSK.scala 47:37]
  wire [19:0] _T_165; // @[Cat.scala 29:58]
  wire [37:0] _T_174; // @[Cat.scala 29:58]
  wire [55:0] _T_183; // @[Cat.scala 29:58]
  wire [61:0] _T_186; // @[Cat.scala 29:58]
  adder.CRA adder.CRA ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_io_x),
    .io_y(CRA_io_y),
    .io_cin(CRA_io_cin),
    .io_s(CRA_io_s),
    .io_cout(CRA_io_cout),
    .io_p(CRA_io_p)
  );
  adder.CRA CRA_1 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_1_io_x),
    .io_y(CRA_1_io_y),
    .io_cin(CRA_1_io_cin),
    .io_s(CRA_1_io_s),
    .io_cout(CRA_1_io_cout),
    .io_p(CRA_1_io_p)
  );
  adder.CRA CRA_2 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_2_io_x),
    .io_y(CRA_2_io_y),
    .io_cin(CRA_2_io_cin),
    .io_s(CRA_2_io_s),
    .io_cout(CRA_2_io_cout),
    .io_p(CRA_2_io_p)
  );
  adder.CRA CRA_3 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_3_io_x),
    .io_y(CRA_3_io_y),
    .io_cin(CRA_3_io_cin),
    .io_s(CRA_3_io_s),
    .io_cout(CRA_3_io_cout),
    .io_p(CRA_3_io_p)
  );
  adder.CRA CRA_4 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_4_io_x),
    .io_y(CRA_4_io_y),
    .io_cin(CRA_4_io_cin),
    .io_s(CRA_4_io_s),
    .io_cout(CRA_4_io_cout),
    .io_p(CRA_4_io_p)
  );
  adder.CRA CRA_5 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_5_io_x),
    .io_y(CRA_5_io_y),
    .io_cin(CRA_5_io_cin),
    .io_s(CRA_5_io_s),
    .io_cout(CRA_5_io_cout),
    .io_p(CRA_5_io_p)
  );
  adder.CRA CRA_6 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_6_io_x),
    .io_y(CRA_6_io_y),
    .io_cin(CRA_6_io_cin),
    .io_s(CRA_6_io_s),
    .io_cout(CRA_6_io_cout),
    .io_p(CRA_6_io_p)
  );
  adder.CRA CRA_7 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_7_io_x),
    .io_y(CRA_7_io_y),
    .io_cin(CRA_7_io_cin),
    .io_s(CRA_7_io_s),
    .io_cout(CRA_7_io_cout),
    .io_p(CRA_7_io_p)
  );
  adder.CRA CRA_8 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_8_io_x),
    .io_y(CRA_8_io_y),
    .io_cin(CRA_8_io_cin),
    .io_s(CRA_8_io_s),
    .io_cout(CRA_8_io_cout),
    .io_p(CRA_8_io_p)
  );
  adder.CRA CRA_9 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_9_io_x),
    .io_y(CRA_9_io_y),
    .io_cin(CRA_9_io_cin),
    .io_s(CRA_9_io_s),
    .io_cout(CRA_9_io_cout),
    .io_p(CRA_9_io_p)
  );
  adder.CRA CRA_10 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_10_io_x),
    .io_y(CRA_10_io_y),
    .io_cin(CRA_10_io_cin),
    .io_s(CRA_10_io_s),
    .io_cout(CRA_10_io_cout),
    .io_p(CRA_10_io_p)
  );
  adder.CRA CRA_11 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_11_io_x),
    .io_y(CRA_11_io_y),
    .io_cin(CRA_11_io_cin),
    .io_s(CRA_11_io_s),
    .io_cout(CRA_11_io_cout),
    .io_p(CRA_11_io_p)
  );
  adder.CRA CRA_12 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_12_io_x),
    .io_y(CRA_12_io_y),
    .io_cin(CRA_12_io_cin),
    .io_s(CRA_12_io_s),
    .io_cout(CRA_12_io_cout),
    .io_p(CRA_12_io_p)
  );
  adder.CRA CRA_13 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_13_io_x),
    .io_y(CRA_13_io_y),
    .io_cin(CRA_13_io_cin),
    .io_s(CRA_13_io_s),
    .io_cout(CRA_13_io_cout),
    .io_p(CRA_13_io_p)
  );
  adder.CRA CRA_14 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_14_io_x),
    .io_y(CRA_14_io_y),
    .io_cin(CRA_14_io_cin),
    .io_s(CRA_14_io_s),
    .io_cout(CRA_14_io_cout),
    .io_p(CRA_14_io_p)
  );
  adder.CRA CRA_15 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_15_io_x),
    .io_y(CRA_15_io_y),
    .io_cin(CRA_15_io_cin),
    .io_s(CRA_15_io_s),
    .io_cout(CRA_15_io_cout),
    .io_p(CRA_15_io_p)
  );
  adder.CRA CRA_16 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_16_io_x),
    .io_y(CRA_16_io_y),
    .io_cin(CRA_16_io_cin),
    .io_s(CRA_16_io_s),
    .io_cout(CRA_16_io_cout),
    .io_p(CRA_16_io_p)
  );
  adder.CRA CRA_17 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_17_io_x),
    .io_y(CRA_17_io_y),
    .io_cin(CRA_17_io_cin),
    .io_s(CRA_17_io_s),
    .io_cout(CRA_17_io_cout),
    .io_p(CRA_17_io_p)
  );
  adder.CRA CRA_18 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_18_io_x),
    .io_y(CRA_18_io_y),
    .io_cin(CRA_18_io_cin),
    .io_s(CRA_18_io_s),
    .io_cout(CRA_18_io_cout),
    .io_p(CRA_18_io_p)
  );
  adder.CRA CRA_19 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_19_io_x),
    .io_y(CRA_19_io_y),
    .io_cin(CRA_19_io_cin),
    .io_s(CRA_19_io_s),
    .io_cout(CRA_19_io_cout),
    .io_p(CRA_19_io_p)
  );
  adder.CRA CRA_20 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_20_io_x),
    .io_y(CRA_20_io_y),
    .io_cin(CRA_20_io_cin),
    .io_s(CRA_20_io_s),
    .io_cout(CRA_20_io_cout),
    .io_p(CRA_20_io_p)
  );
  adder.CRA CRA_21 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_21_io_x),
    .io_y(CRA_21_io_y),
    .io_cin(CRA_21_io_cin),
    .io_s(CRA_21_io_s),
    .io_cout(CRA_21_io_cout),
    .io_p(CRA_21_io_p)
  );
  adder.CRA CRA_22 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_22_io_x),
    .io_y(CRA_22_io_y),
    .io_cin(CRA_22_io_cin),
    .io_s(CRA_22_io_s),
    .io_cout(CRA_22_io_cout),
    .io_p(CRA_22_io_p)
  );
  adder.CRA CRA_23 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_23_io_x),
    .io_y(CRA_23_io_y),
    .io_cin(CRA_23_io_cin),
    .io_s(CRA_23_io_s),
    .io_cout(CRA_23_io_cout),
    .io_p(CRA_23_io_p)
  );
  adder.CRA CRA_24 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_24_io_x),
    .io_y(CRA_24_io_y),
    .io_cin(CRA_24_io_cin),
    .io_s(CRA_24_io_s),
    .io_cout(CRA_24_io_cout),
    .io_p(CRA_24_io_p)
  );
  adder.CRA CRA_25 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_25_io_x),
    .io_y(CRA_25_io_y),
    .io_cin(CRA_25_io_cin),
    .io_s(CRA_25_io_s),
    .io_cout(CRA_25_io_cout),
    .io_p(CRA_25_io_p)
  );
  adder.CRA CRA_26 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_26_io_x),
    .io_y(CRA_26_io_y),
    .io_cin(CRA_26_io_cin),
    .io_s(CRA_26_io_s),
    .io_cout(CRA_26_io_cout),
    .io_p(CRA_26_io_p)
  );
  adder.CRA CRA_27 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_27_io_x),
    .io_y(CRA_27_io_y),
    .io_cin(CRA_27_io_cin),
    .io_s(CRA_27_io_s),
    .io_cout(CRA_27_io_cout),
    .io_p(CRA_27_io_p)
  );
  adder.CRA CRA_28 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_28_io_x),
    .io_y(CRA_28_io_y),
    .io_cin(CRA_28_io_cin),
    .io_s(CRA_28_io_s),
    .io_cout(CRA_28_io_cout),
    .io_p(CRA_28_io_p)
  );
  adder.CRA CRA_29 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_29_io_x),
    .io_y(CRA_29_io_y),
    .io_cin(CRA_29_io_cin),
    .io_s(CRA_29_io_s),
    .io_cout(CRA_29_io_cout),
    .io_p(CRA_29_io_p)
  );
  adder.CRA CRA_30 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_30_io_x),
    .io_y(CRA_30_io_y),
    .io_cin(CRA_30_io_cin),
    .io_s(CRA_30_io_s),
    .io_cout(CRA_30_io_cout),
    .io_p(CRA_30_io_p)
  );
  adder.CRA CRA_31 ( // @[adder.CSK.scala 21:21]
    .io_x(CRA_31_io_x),
    .io_y(CRA_31_io_y),
    .io_cin(CRA_31_io_cin),
    .io_s(CRA_31_io_s),
    .io_cout(CRA_31_io_cout),
    .io_p(CRA_31_io_p)
  );
  assign _T_64 = CRA_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_65 = _T_64 & io_cin; // @[adder.CSK.scala 43:37]
  assign _T_67 = CRA_1_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_68 = _T_67 & CRA_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_70 = CRA_2_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_71 = _T_70 & CRA_1_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_73 = CRA_3_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_74 = _T_73 & CRA_2_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_76 = CRA_4_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_77 = _T_76 & CRA_3_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_79 = CRA_5_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_80 = _T_79 & CRA_4_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_82 = CRA_6_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_83 = _T_82 & CRA_5_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_85 = CRA_7_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_86 = _T_85 & CRA_6_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_88 = CRA_8_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_89 = _T_88 & CRA_7_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_91 = CRA_9_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_92 = _T_91 & CRA_8_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_94 = CRA_10_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_95 = _T_94 & CRA_9_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_97 = CRA_11_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_98 = _T_97 & CRA_10_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_100 = CRA_12_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_101 = _T_100 & CRA_11_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_103 = CRA_13_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_104 = _T_103 & CRA_12_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_106 = CRA_14_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_107 = _T_106 & CRA_13_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_109 = CRA_15_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_110 = _T_109 & CRA_14_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_112 = CRA_16_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_113 = _T_112 & CRA_15_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_115 = CRA_17_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_116 = _T_115 & CRA_16_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_118 = CRA_18_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_119 = _T_118 & CRA_17_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_121 = CRA_19_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_122 = _T_121 & CRA_18_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_124 = CRA_20_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_125 = _T_124 & CRA_19_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_127 = CRA_21_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_128 = _T_127 & CRA_20_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_130 = CRA_22_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_131 = _T_130 & CRA_21_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_133 = CRA_23_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_134 = _T_133 & CRA_22_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_136 = CRA_24_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_137 = _T_136 & CRA_23_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_139 = CRA_25_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_140 = _T_139 & CRA_24_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_142 = CRA_26_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_143 = _T_142 & CRA_25_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_145 = CRA_27_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_146 = _T_145 & CRA_26_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_148 = CRA_28_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_149 = _T_148 & CRA_27_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_151 = CRA_29_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_152 = _T_151 & CRA_28_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_154 = CRA_30_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_155 = _T_154 & CRA_29_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_165 = {CRA_31_io_s,CRA_30_io_s,CRA_29_io_s,CRA_28_io_s,CRA_27_io_s,CRA_26_io_s,CRA_25_io_s,CRA_24_io_s,CRA_23_io_s,CRA_22_io_s}; // @[Cat.scala 29:58]
  assign _T_174 = {_T_165,CRA_21_io_s,CRA_20_io_s,CRA_19_io_s,CRA_18_io_s,CRA_17_io_s,CRA_16_io_s,CRA_15_io_s,CRA_14_io_s,CRA_13_io_s}; // @[Cat.scala 29:58]
  assign _T_183 = {_T_174,CRA_12_io_s,CRA_11_io_s,CRA_10_io_s,CRA_9_io_s,CRA_8_io_s,CRA_7_io_s,CRA_6_io_s,CRA_5_io_s,CRA_4_io_s}; // @[Cat.scala 29:58]
  assign _T_186 = {_T_183,CRA_3_io_s,CRA_2_io_s,CRA_1_io_s}; // @[Cat.scala 29:58]
  assign io_s = {_T_186,CRA_io_s}; // @[adder.CSK.scala 52:8]
  assign io_cout = CRA_31_io_cout; // @[adder.CSK.scala 39:15]
  assign CRA_io_x = io_x[1:0]; // @[adder.CSK.scala 22:11]
  assign CRA_io_y = io_y[1:0]; // @[adder.CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[adder.CSK.scala 26:15]
  assign CRA_1_io_x = io_x[3:2]; // @[adder.CSK.scala 22:11]
  assign CRA_1_io_y = io_y[3:2]; // @[adder.CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_65; // @[adder.CSK.scala 43:15]
  assign CRA_2_io_x = io_x[5:4]; // @[adder.CSK.scala 22:11]
  assign CRA_2_io_y = io_y[5:4]; // @[adder.CSK.scala 23:11]
  assign CRA_2_io_cin = CRA_1_io_cout | _T_68; // @[adder.CSK.scala 47:15]
  assign CRA_3_io_x = io_x[7:6]; // @[adder.CSK.scala 22:11]
  assign CRA_3_io_y = io_y[7:6]; // @[adder.CSK.scala 23:11]
  assign CRA_3_io_cin = CRA_2_io_cout | _T_71; // @[adder.CSK.scala 47:15]
  assign CRA_4_io_x = io_x[9:8]; // @[adder.CSK.scala 22:11]
  assign CRA_4_io_y = io_y[9:8]; // @[adder.CSK.scala 23:11]
  assign CRA_4_io_cin = CRA_3_io_cout | _T_74; // @[adder.CSK.scala 47:15]
  assign CRA_5_io_x = io_x[11:10]; // @[adder.CSK.scala 22:11]
  assign CRA_5_io_y = io_y[11:10]; // @[adder.CSK.scala 23:11]
  assign CRA_5_io_cin = CRA_4_io_cout | _T_77; // @[adder.CSK.scala 47:15]
  assign CRA_6_io_x = io_x[13:12]; // @[adder.CSK.scala 22:11]
  assign CRA_6_io_y = io_y[13:12]; // @[adder.CSK.scala 23:11]
  assign CRA_6_io_cin = CRA_5_io_cout | _T_80; // @[adder.CSK.scala 47:15]
  assign CRA_7_io_x = io_x[15:14]; // @[adder.CSK.scala 22:11]
  assign CRA_7_io_y = io_y[15:14]; // @[adder.CSK.scala 23:11]
  assign CRA_7_io_cin = CRA_6_io_cout | _T_83; // @[adder.CSK.scala 47:15]
  assign CRA_8_io_x = io_x[17:16]; // @[adder.CSK.scala 22:11]
  assign CRA_8_io_y = io_y[17:16]; // @[adder.CSK.scala 23:11]
  assign CRA_8_io_cin = CRA_7_io_cout | _T_86; // @[adder.CSK.scala 47:15]
  assign CRA_9_io_x = io_x[19:18]; // @[adder.CSK.scala 22:11]
  assign CRA_9_io_y = io_y[19:18]; // @[adder.CSK.scala 23:11]
  assign CRA_9_io_cin = CRA_8_io_cout | _T_89; // @[adder.CSK.scala 47:15]
  assign CRA_10_io_x = io_x[21:20]; // @[adder.CSK.scala 22:11]
  assign CRA_10_io_y = io_y[21:20]; // @[adder.CSK.scala 23:11]
  assign CRA_10_io_cin = CRA_9_io_cout | _T_92; // @[adder.CSK.scala 47:15]
  assign CRA_11_io_x = io_x[23:22]; // @[adder.CSK.scala 22:11]
  assign CRA_11_io_y = io_y[23:22]; // @[adder.CSK.scala 23:11]
  assign CRA_11_io_cin = CRA_10_io_cout | _T_95; // @[adder.CSK.scala 47:15]
  assign CRA_12_io_x = io_x[25:24]; // @[adder.CSK.scala 22:11]
  assign CRA_12_io_y = io_y[25:24]; // @[adder.CSK.scala 23:11]
  assign CRA_12_io_cin = CRA_11_io_cout | _T_98; // @[adder.CSK.scala 47:15]
  assign CRA_13_io_x = io_x[27:26]; // @[adder.CSK.scala 22:11]
  assign CRA_13_io_y = io_y[27:26]; // @[adder.CSK.scala 23:11]
  assign CRA_13_io_cin = CRA_12_io_cout | _T_101; // @[adder.CSK.scala 47:15]
  assign CRA_14_io_x = io_x[29:28]; // @[adder.CSK.scala 22:11]
  assign CRA_14_io_y = io_y[29:28]; // @[adder.CSK.scala 23:11]
  assign CRA_14_io_cin = CRA_13_io_cout | _T_104; // @[adder.CSK.scala 47:15]
  assign CRA_15_io_x = io_x[31:30]; // @[adder.CSK.scala 22:11]
  assign CRA_15_io_y = io_y[31:30]; // @[adder.CSK.scala 23:11]
  assign CRA_15_io_cin = CRA_14_io_cout | _T_107; // @[adder.CSK.scala 47:15]
  assign CRA_16_io_x = io_x[33:32]; // @[adder.CSK.scala 22:11]
  assign CRA_16_io_y = io_y[33:32]; // @[adder.CSK.scala 23:11]
  assign CRA_16_io_cin = CRA_15_io_cout | _T_110; // @[adder.CSK.scala 47:15]
  assign CRA_17_io_x = io_x[35:34]; // @[adder.CSK.scala 22:11]
  assign CRA_17_io_y = io_y[35:34]; // @[adder.CSK.scala 23:11]
  assign CRA_17_io_cin = CRA_16_io_cout | _T_113; // @[adder.CSK.scala 47:15]
  assign CRA_18_io_x = io_x[37:36]; // @[adder.CSK.scala 22:11]
  assign CRA_18_io_y = io_y[37:36]; // @[adder.CSK.scala 23:11]
  assign CRA_18_io_cin = CRA_17_io_cout | _T_116; // @[adder.CSK.scala 47:15]
  assign CRA_19_io_x = io_x[39:38]; // @[adder.CSK.scala 22:11]
  assign CRA_19_io_y = io_y[39:38]; // @[adder.CSK.scala 23:11]
  assign CRA_19_io_cin = CRA_18_io_cout | _T_119; // @[adder.CSK.scala 47:15]
  assign CRA_20_io_x = io_x[41:40]; // @[adder.CSK.scala 22:11]
  assign CRA_20_io_y = io_y[41:40]; // @[adder.CSK.scala 23:11]
  assign CRA_20_io_cin = CRA_19_io_cout | _T_122; // @[adder.CSK.scala 47:15]
  assign CRA_21_io_x = io_x[43:42]; // @[adder.CSK.scala 22:11]
  assign CRA_21_io_y = io_y[43:42]; // @[adder.CSK.scala 23:11]
  assign CRA_21_io_cin = CRA_20_io_cout | _T_125; // @[adder.CSK.scala 47:15]
  assign CRA_22_io_x = io_x[45:44]; // @[adder.CSK.scala 22:11]
  assign CRA_22_io_y = io_y[45:44]; // @[adder.CSK.scala 23:11]
  assign CRA_22_io_cin = CRA_21_io_cout | _T_128; // @[adder.CSK.scala 47:15]
  assign CRA_23_io_x = io_x[47:46]; // @[adder.CSK.scala 22:11]
  assign CRA_23_io_y = io_y[47:46]; // @[adder.CSK.scala 23:11]
  assign CRA_23_io_cin = CRA_22_io_cout | _T_131; // @[adder.CSK.scala 47:15]
  assign CRA_24_io_x = io_x[49:48]; // @[adder.CSK.scala 22:11]
  assign CRA_24_io_y = io_y[49:48]; // @[adder.CSK.scala 23:11]
  assign CRA_24_io_cin = CRA_23_io_cout | _T_134; // @[adder.CSK.scala 47:15]
  assign CRA_25_io_x = io_x[51:50]; // @[adder.CSK.scala 22:11]
  assign CRA_25_io_y = io_y[51:50]; // @[adder.CSK.scala 23:11]
  assign CRA_25_io_cin = CRA_24_io_cout | _T_137; // @[adder.CSK.scala 47:15]
  assign CRA_26_io_x = io_x[53:52]; // @[adder.CSK.scala 22:11]
  assign CRA_26_io_y = io_y[53:52]; // @[adder.CSK.scala 23:11]
  assign CRA_26_io_cin = CRA_25_io_cout | _T_140; // @[adder.CSK.scala 47:15]
  assign CRA_27_io_x = io_x[55:54]; // @[adder.CSK.scala 22:11]
  assign CRA_27_io_y = io_y[55:54]; // @[adder.CSK.scala 23:11]
  assign CRA_27_io_cin = CRA_26_io_cout | _T_143; // @[adder.CSK.scala 47:15]
  assign CRA_28_io_x = io_x[57:56]; // @[adder.CSK.scala 22:11]
  assign CRA_28_io_y = io_y[57:56]; // @[adder.CSK.scala 23:11]
  assign CRA_28_io_cin = CRA_27_io_cout | _T_146; // @[adder.CSK.scala 47:15]
  assign CRA_29_io_x = io_x[59:58]; // @[adder.CSK.scala 22:11]
  assign CRA_29_io_y = io_y[59:58]; // @[adder.CSK.scala 23:11]
  assign CRA_29_io_cin = CRA_28_io_cout | _T_149; // @[adder.CSK.scala 47:15]
  assign CRA_30_io_x = io_x[61:60]; // @[adder.CSK.scala 22:11]
  assign CRA_30_io_y = io_y[61:60]; // @[adder.CSK.scala 23:11]
  assign CRA_30_io_cin = CRA_29_io_cout | _T_152; // @[adder.CSK.scala 47:15]
  assign CRA_31_io_x = io_x[63:62]; // @[adder.CSK.scala 22:11]
  assign CRA_31_io_y = io_y[63:62]; // @[adder.CSK.scala 23:11]
  assign CRA_31_io_cin = CRA_30_io_cout | _T_155; // @[adder.CSK.scala 47:15]
endmodule
