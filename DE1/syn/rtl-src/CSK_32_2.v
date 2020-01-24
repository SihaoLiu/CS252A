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
  input  [31:0] io_x,
  input  [31:0] io_y,
  input         io_cin,
  output [31:0] io_s,
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
  wire  _T_32; // @[adder.CSK.scala 36:28]
  wire  _T_33; // @[adder.CSK.scala 43:37]
  wire  _T_35; // @[adder.CSK.scala 36:28]
  wire  _T_36; // @[adder.CSK.scala 47:37]
  wire  _T_38; // @[adder.CSK.scala 36:28]
  wire  _T_39; // @[adder.CSK.scala 47:37]
  wire  _T_41; // @[adder.CSK.scala 36:28]
  wire  _T_42; // @[adder.CSK.scala 47:37]
  wire  _T_44; // @[adder.CSK.scala 36:28]
  wire  _T_45; // @[adder.CSK.scala 47:37]
  wire  _T_47; // @[adder.CSK.scala 36:28]
  wire  _T_48; // @[adder.CSK.scala 47:37]
  wire  _T_50; // @[adder.CSK.scala 36:28]
  wire  _T_51; // @[adder.CSK.scala 47:37]
  wire  _T_53; // @[adder.CSK.scala 36:28]
  wire  _T_54; // @[adder.CSK.scala 47:37]
  wire  _T_56; // @[adder.CSK.scala 36:28]
  wire  _T_57; // @[adder.CSK.scala 47:37]
  wire  _T_59; // @[adder.CSK.scala 36:28]
  wire  _T_60; // @[adder.CSK.scala 47:37]
  wire  _T_62; // @[adder.CSK.scala 36:28]
  wire  _T_63; // @[adder.CSK.scala 47:37]
  wire  _T_65; // @[adder.CSK.scala 36:28]
  wire  _T_66; // @[adder.CSK.scala 47:37]
  wire  _T_68; // @[adder.CSK.scala 36:28]
  wire  _T_69; // @[adder.CSK.scala 47:37]
  wire  _T_71; // @[adder.CSK.scala 36:28]
  wire  _T_72; // @[adder.CSK.scala 47:37]
  wire  _T_74; // @[adder.CSK.scala 36:28]
  wire  _T_75; // @[adder.CSK.scala 47:37]
  wire [19:0] _T_85; // @[Cat.scala 29:58]
  wire [29:0] _T_90; // @[Cat.scala 29:58]
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
  assign _T_32 = CRA_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_33 = _T_32 & io_cin; // @[adder.CSK.scala 43:37]
  assign _T_35 = CRA_1_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_36 = _T_35 & CRA_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_38 = CRA_2_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_39 = _T_38 & CRA_1_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_41 = CRA_3_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_42 = _T_41 & CRA_2_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_44 = CRA_4_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_45 = _T_44 & CRA_3_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_47 = CRA_5_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_48 = _T_47 & CRA_4_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_50 = CRA_6_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_51 = _T_50 & CRA_5_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_53 = CRA_7_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_54 = _T_53 & CRA_6_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_56 = CRA_8_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_57 = _T_56 & CRA_7_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_59 = CRA_9_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_60 = _T_59 & CRA_8_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_62 = CRA_10_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_63 = _T_62 & CRA_9_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_65 = CRA_11_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_66 = _T_65 & CRA_10_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_68 = CRA_12_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_69 = _T_68 & CRA_11_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_71 = CRA_13_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_72 = _T_71 & CRA_12_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_74 = CRA_14_io_p == 2'h3; // @[adder.CSK.scala 36:28]
  assign _T_75 = _T_74 & CRA_13_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_85 = {CRA_15_io_s,CRA_14_io_s,CRA_13_io_s,CRA_12_io_s,CRA_11_io_s,CRA_10_io_s,CRA_9_io_s,CRA_8_io_s,CRA_7_io_s,CRA_6_io_s}; // @[Cat.scala 29:58]
  assign _T_90 = {_T_85,CRA_5_io_s,CRA_4_io_s,CRA_3_io_s,CRA_2_io_s,CRA_1_io_s}; // @[Cat.scala 29:58]
  assign io_s = {_T_90,CRA_io_s}; // @[adder.CSK.scala 52:8]
  assign io_cout = CRA_15_io_cout; // @[adder.CSK.scala 39:15]
  assign CRA_io_x = io_x[1:0]; // @[adder.CSK.scala 22:11]
  assign CRA_io_y = io_y[1:0]; // @[adder.CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[adder.CSK.scala 26:15]
  assign CRA_1_io_x = io_x[3:2]; // @[adder.CSK.scala 22:11]
  assign CRA_1_io_y = io_y[3:2]; // @[adder.CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_33; // @[adder.CSK.scala 43:15]
  assign CRA_2_io_x = io_x[5:4]; // @[adder.CSK.scala 22:11]
  assign CRA_2_io_y = io_y[5:4]; // @[adder.CSK.scala 23:11]
  assign CRA_2_io_cin = CRA_1_io_cout | _T_36; // @[adder.CSK.scala 47:15]
  assign CRA_3_io_x = io_x[7:6]; // @[adder.CSK.scala 22:11]
  assign CRA_3_io_y = io_y[7:6]; // @[adder.CSK.scala 23:11]
  assign CRA_3_io_cin = CRA_2_io_cout | _T_39; // @[adder.CSK.scala 47:15]
  assign CRA_4_io_x = io_x[9:8]; // @[adder.CSK.scala 22:11]
  assign CRA_4_io_y = io_y[9:8]; // @[adder.CSK.scala 23:11]
  assign CRA_4_io_cin = CRA_3_io_cout | _T_42; // @[adder.CSK.scala 47:15]
  assign CRA_5_io_x = io_x[11:10]; // @[adder.CSK.scala 22:11]
  assign CRA_5_io_y = io_y[11:10]; // @[adder.CSK.scala 23:11]
  assign CRA_5_io_cin = CRA_4_io_cout | _T_45; // @[adder.CSK.scala 47:15]
  assign CRA_6_io_x = io_x[13:12]; // @[adder.CSK.scala 22:11]
  assign CRA_6_io_y = io_y[13:12]; // @[adder.CSK.scala 23:11]
  assign CRA_6_io_cin = CRA_5_io_cout | _T_48; // @[adder.CSK.scala 47:15]
  assign CRA_7_io_x = io_x[15:14]; // @[adder.CSK.scala 22:11]
  assign CRA_7_io_y = io_y[15:14]; // @[adder.CSK.scala 23:11]
  assign CRA_7_io_cin = CRA_6_io_cout | _T_51; // @[adder.CSK.scala 47:15]
  assign CRA_8_io_x = io_x[17:16]; // @[adder.CSK.scala 22:11]
  assign CRA_8_io_y = io_y[17:16]; // @[adder.CSK.scala 23:11]
  assign CRA_8_io_cin = CRA_7_io_cout | _T_54; // @[adder.CSK.scala 47:15]
  assign CRA_9_io_x = io_x[19:18]; // @[adder.CSK.scala 22:11]
  assign CRA_9_io_y = io_y[19:18]; // @[adder.CSK.scala 23:11]
  assign CRA_9_io_cin = CRA_8_io_cout | _T_57; // @[adder.CSK.scala 47:15]
  assign CRA_10_io_x = io_x[21:20]; // @[adder.CSK.scala 22:11]
  assign CRA_10_io_y = io_y[21:20]; // @[adder.CSK.scala 23:11]
  assign CRA_10_io_cin = CRA_9_io_cout | _T_60; // @[adder.CSK.scala 47:15]
  assign CRA_11_io_x = io_x[23:22]; // @[adder.CSK.scala 22:11]
  assign CRA_11_io_y = io_y[23:22]; // @[adder.CSK.scala 23:11]
  assign CRA_11_io_cin = CRA_10_io_cout | _T_63; // @[adder.CSK.scala 47:15]
  assign CRA_12_io_x = io_x[25:24]; // @[adder.CSK.scala 22:11]
  assign CRA_12_io_y = io_y[25:24]; // @[adder.CSK.scala 23:11]
  assign CRA_12_io_cin = CRA_11_io_cout | _T_66; // @[adder.CSK.scala 47:15]
  assign CRA_13_io_x = io_x[27:26]; // @[adder.CSK.scala 22:11]
  assign CRA_13_io_y = io_y[27:26]; // @[adder.CSK.scala 23:11]
  assign CRA_13_io_cin = CRA_12_io_cout | _T_69; // @[adder.CSK.scala 47:15]
  assign CRA_14_io_x = io_x[29:28]; // @[adder.CSK.scala 22:11]
  assign CRA_14_io_y = io_y[29:28]; // @[adder.CSK.scala 23:11]
  assign CRA_14_io_cin = CRA_13_io_cout | _T_72; // @[adder.CSK.scala 47:15]
  assign CRA_15_io_x = io_x[31:30]; // @[adder.CSK.scala 22:11]
  assign CRA_15_io_y = io_y[31:30]; // @[adder.CSK.scala 23:11]
  assign CRA_15_io_cin = CRA_14_io_cout | _T_75; // @[adder.CSK.scala 47:15]
endmodule
