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
module CRA(
  input  [3:0] io_x,
  input  [3:0] io_y,
  input        io_cin,
  output [3:0] io_s,
  output       io_cout,
  output [3:0] io_p
);
  wire  FA1_io_x; // @[CRA.scala 22:20]
  wire  FA1_io_y; // @[CRA.scala 22:20]
  wire  FA1_io_cin; // @[CRA.scala 22:20]
  wire  FA1_io_s; // @[CRA.scala 22:20]
  wire  FA1_io_cout; // @[CRA.scala 22:20]
  wire  FA1_io_p; // @[CRA.scala 22:20]
  wire  FA1_1_io_x; // @[CRA.scala 22:20]
  wire  FA1_1_io_y; // @[CRA.scala 22:20]
  wire  FA1_1_io_cin; // @[CRA.scala 22:20]
  wire  FA1_1_io_s; // @[CRA.scala 22:20]
  wire  FA1_1_io_cout; // @[CRA.scala 22:20]
  wire  FA1_1_io_p; // @[CRA.scala 22:20]
  wire  FA1_2_io_x; // @[CRA.scala 22:20]
  wire  FA1_2_io_y; // @[CRA.scala 22:20]
  wire  FA1_2_io_cin; // @[CRA.scala 22:20]
  wire  FA1_2_io_s; // @[CRA.scala 22:20]
  wire  FA1_2_io_cout; // @[CRA.scala 22:20]
  wire  FA1_2_io_p; // @[CRA.scala 22:20]
  wire  FA1_3_io_x; // @[CRA.scala 22:20]
  wire  FA1_3_io_y; // @[CRA.scala 22:20]
  wire  FA1_3_io_cin; // @[CRA.scala 22:20]
  wire  FA1_3_io_s; // @[CRA.scala 22:20]
  wire  FA1_3_io_cout; // @[CRA.scala 22:20]
  wire  FA1_3_io_p; // @[CRA.scala 22:20]
  wire  _T_8_1; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_8_0; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [1:0] _T_9; // @[CRA.scala 38:44]
  wire  _T_8_3; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_8_2; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [1:0] _T_10; // @[CRA.scala 38:44]
  wire  _T_16_1; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_16_0; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [1:0] _T_17; // @[CRA.scala 42:44]
  wire  _T_16_3; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_16_2; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [1:0] _T_18; // @[CRA.scala 42:44]
  FA1 FA1 ( // @[CRA.scala 22:20]
    .io_x(FA1_io_x),
    .io_y(FA1_io_y),
    .io_cin(FA1_io_cin),
    .io_s(FA1_io_s),
    .io_cout(FA1_io_cout),
    .io_p(FA1_io_p)
  );
  FA1 FA1_1 ( // @[CRA.scala 22:20]
    .io_x(FA1_1_io_x),
    .io_y(FA1_1_io_y),
    .io_cin(FA1_1_io_cin),
    .io_s(FA1_1_io_s),
    .io_cout(FA1_1_io_cout),
    .io_p(FA1_1_io_p)
  );
  FA1 FA1_2 ( // @[CRA.scala 22:20]
    .io_x(FA1_2_io_x),
    .io_y(FA1_2_io_y),
    .io_cin(FA1_2_io_cin),
    .io_s(FA1_2_io_s),
    .io_cout(FA1_2_io_cout),
    .io_p(FA1_2_io_p)
  );
  FA1 FA1_3 ( // @[CRA.scala 22:20]
    .io_x(FA1_3_io_x),
    .io_y(FA1_3_io_y),
    .io_cin(FA1_3_io_cin),
    .io_s(FA1_3_io_s),
    .io_cout(FA1_3_io_cout),
    .io_p(FA1_3_io_p)
  );
  assign _T_8_1 = FA1_1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_8_0 = FA1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_9 = {_T_8_1,_T_8_0}; // @[CRA.scala 38:44]
  assign _T_8_3 = FA1_3_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_8_2 = FA1_2_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_10 = {_T_8_3,_T_8_2}; // @[CRA.scala 38:44]
  assign _T_16_1 = FA1_1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_16_0 = FA1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_17 = {_T_16_1,_T_16_0}; // @[CRA.scala 42:44]
  assign _T_16_3 = FA1_3_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_16_2 = FA1_2_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_18 = {_T_16_3,_T_16_2}; // @[CRA.scala 42:44]
  assign io_s = {_T_10,_T_9}; // @[CRA.scala 38:8]
  assign io_cout = FA1_3_io_cout; // @[CRA.scala 35:11]
  assign io_p = {_T_18,_T_17}; // @[CRA.scala 42:8]
  assign FA1_io_x = io_x[0]; // @[CRA.scala 23:10]
  assign FA1_io_y = io_y[0]; // @[CRA.scala 24:10]
  assign FA1_io_cin = io_cin; // @[CRA.scala 34:21]
  assign FA1_1_io_x = io_x[1]; // @[CRA.scala 23:10]
  assign FA1_1_io_y = io_y[1]; // @[CRA.scala 24:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[CRA.scala 30:27]
  assign FA1_2_io_x = io_x[2]; // @[CRA.scala 23:10]
  assign FA1_2_io_y = io_y[2]; // @[CRA.scala 24:10]
  assign FA1_2_io_cin = FA1_1_io_cout; // @[CRA.scala 30:27]
  assign FA1_3_io_x = io_x[3]; // @[CRA.scala 23:10]
  assign FA1_3_io_y = io_y[3]; // @[CRA.scala 24:10]
  assign FA1_3_io_cin = FA1_2_io_cout; // @[CRA.scala 30:27]
endmodule
module CSK(
  input         clock,
  input         reset,
  input  [31:0] io_x,
  input  [31:0] io_y,
  input         io_cin,
  output [31:0] io_s,
  output        io_cout
);
  wire [3:0] CRA_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_io_y; // @[CSK.scala 21:21]
  wire  CRA_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_io_s; // @[CSK.scala 21:21]
  wire  CRA_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_1_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_1_io_y; // @[CSK.scala 21:21]
  wire  CRA_1_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_1_io_s; // @[CSK.scala 21:21]
  wire  CRA_1_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_1_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_2_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_2_io_y; // @[CSK.scala 21:21]
  wire  CRA_2_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_2_io_s; // @[CSK.scala 21:21]
  wire  CRA_2_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_2_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_3_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_3_io_y; // @[CSK.scala 21:21]
  wire  CRA_3_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_3_io_s; // @[CSK.scala 21:21]
  wire  CRA_3_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_3_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_4_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_4_io_y; // @[CSK.scala 21:21]
  wire  CRA_4_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_4_io_s; // @[CSK.scala 21:21]
  wire  CRA_4_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_4_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_5_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_5_io_y; // @[CSK.scala 21:21]
  wire  CRA_5_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_5_io_s; // @[CSK.scala 21:21]
  wire  CRA_5_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_5_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_6_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_6_io_y; // @[CSK.scala 21:21]
  wire  CRA_6_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_6_io_s; // @[CSK.scala 21:21]
  wire  CRA_6_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_6_io_p; // @[CSK.scala 21:21]
  wire [3:0] CRA_7_io_x; // @[CSK.scala 21:21]
  wire [3:0] CRA_7_io_y; // @[CSK.scala 21:21]
  wire  CRA_7_io_cin; // @[CSK.scala 21:21]
  wire [3:0] CRA_7_io_s; // @[CSK.scala 21:21]
  wire  CRA_7_io_cout; // @[CSK.scala 21:21]
  wire [3:0] CRA_7_io_p; // @[CSK.scala 21:21]
  wire  _T_16; // @[CSK.scala 36:28]
  wire  _T_17; // @[CSK.scala 43:37]
  wire  _T_19; // @[CSK.scala 36:28]
  wire  _T_20; // @[CSK.scala 47:37]
  wire  _T_22; // @[CSK.scala 36:28]
  wire  _T_23; // @[CSK.scala 47:37]
  wire  _T_25; // @[CSK.scala 36:28]
  wire  _T_26; // @[CSK.scala 47:37]
  wire  _T_28; // @[CSK.scala 36:28]
  wire  _T_29; // @[CSK.scala 47:37]
  wire  _T_31; // @[CSK.scala 36:28]
  wire  _T_32; // @[CSK.scala 47:37]
  wire  _T_34; // @[CSK.scala 36:28]
  wire  _T_35; // @[CSK.scala 47:37]
  wire [27:0] _T_42; // @[Cat.scala 29:58]
  CRA CRA ( // @[CSK.scala 21:21]
    .io_x(CRA_io_x),
    .io_y(CRA_io_y),
    .io_cin(CRA_io_cin),
    .io_s(CRA_io_s),
    .io_cout(CRA_io_cout),
    .io_p(CRA_io_p)
  );
  CRA CRA_1 ( // @[CSK.scala 21:21]
    .io_x(CRA_1_io_x),
    .io_y(CRA_1_io_y),
    .io_cin(CRA_1_io_cin),
    .io_s(CRA_1_io_s),
    .io_cout(CRA_1_io_cout),
    .io_p(CRA_1_io_p)
  );
  CRA CRA_2 ( // @[CSK.scala 21:21]
    .io_x(CRA_2_io_x),
    .io_y(CRA_2_io_y),
    .io_cin(CRA_2_io_cin),
    .io_s(CRA_2_io_s),
    .io_cout(CRA_2_io_cout),
    .io_p(CRA_2_io_p)
  );
  CRA CRA_3 ( // @[CSK.scala 21:21]
    .io_x(CRA_3_io_x),
    .io_y(CRA_3_io_y),
    .io_cin(CRA_3_io_cin),
    .io_s(CRA_3_io_s),
    .io_cout(CRA_3_io_cout),
    .io_p(CRA_3_io_p)
  );
  CRA CRA_4 ( // @[CSK.scala 21:21]
    .io_x(CRA_4_io_x),
    .io_y(CRA_4_io_y),
    .io_cin(CRA_4_io_cin),
    .io_s(CRA_4_io_s),
    .io_cout(CRA_4_io_cout),
    .io_p(CRA_4_io_p)
  );
  CRA CRA_5 ( // @[CSK.scala 21:21]
    .io_x(CRA_5_io_x),
    .io_y(CRA_5_io_y),
    .io_cin(CRA_5_io_cin),
    .io_s(CRA_5_io_s),
    .io_cout(CRA_5_io_cout),
    .io_p(CRA_5_io_p)
  );
  CRA CRA_6 ( // @[CSK.scala 21:21]
    .io_x(CRA_6_io_x),
    .io_y(CRA_6_io_y),
    .io_cin(CRA_6_io_cin),
    .io_s(CRA_6_io_s),
    .io_cout(CRA_6_io_cout),
    .io_p(CRA_6_io_p)
  );
  CRA CRA_7 ( // @[CSK.scala 21:21]
    .io_x(CRA_7_io_x),
    .io_y(CRA_7_io_y),
    .io_cin(CRA_7_io_cin),
    .io_s(CRA_7_io_s),
    .io_cout(CRA_7_io_cout),
    .io_p(CRA_7_io_p)
  );
  assign _T_16 = CRA_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_17 = _T_16 & io_cin; // @[CSK.scala 43:37]
  assign _T_19 = CRA_1_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_20 = _T_19 & CRA_io_cout; // @[CSK.scala 47:37]
  assign _T_22 = CRA_2_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_23 = _T_22 & CRA_1_io_cout; // @[CSK.scala 47:37]
  assign _T_25 = CRA_3_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_26 = _T_25 & CRA_2_io_cout; // @[CSK.scala 47:37]
  assign _T_28 = CRA_4_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_29 = _T_28 & CRA_3_io_cout; // @[CSK.scala 47:37]
  assign _T_31 = CRA_5_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_32 = _T_31 & CRA_4_io_cout; // @[CSK.scala 47:37]
  assign _T_34 = CRA_6_io_p == 4'hf; // @[CSK.scala 36:28]
  assign _T_35 = _T_34 & CRA_5_io_cout; // @[CSK.scala 47:37]
  assign _T_42 = {CRA_7_io_s,CRA_6_io_s,CRA_5_io_s,CRA_4_io_s,CRA_3_io_s,CRA_2_io_s,CRA_1_io_s}; // @[Cat.scala 29:58]
  assign io_s = {_T_42,CRA_io_s}; // @[CSK.scala 52:8]
  assign io_cout = CRA_7_io_cout; // @[CSK.scala 39:15]
  assign CRA_io_x = io_x[3:0]; // @[CSK.scala 22:11]
  assign CRA_io_y = io_y[3:0]; // @[CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[CSK.scala 26:15]
  assign CRA_1_io_x = io_x[7:4]; // @[CSK.scala 22:11]
  assign CRA_1_io_y = io_y[7:4]; // @[CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_17; // @[CSK.scala 43:15]
  assign CRA_2_io_x = io_x[11:8]; // @[CSK.scala 22:11]
  assign CRA_2_io_y = io_y[11:8]; // @[CSK.scala 23:11]
  assign CRA_2_io_cin = CRA_1_io_cout | _T_20; // @[CSK.scala 47:15]
  assign CRA_3_io_x = io_x[15:12]; // @[CSK.scala 22:11]
  assign CRA_3_io_y = io_y[15:12]; // @[CSK.scala 23:11]
  assign CRA_3_io_cin = CRA_2_io_cout | _T_23; // @[CSK.scala 47:15]
  assign CRA_4_io_x = io_x[19:16]; // @[CSK.scala 22:11]
  assign CRA_4_io_y = io_y[19:16]; // @[CSK.scala 23:11]
  assign CRA_4_io_cin = CRA_3_io_cout | _T_26; // @[CSK.scala 47:15]
  assign CRA_5_io_x = io_x[23:20]; // @[CSK.scala 22:11]
  assign CRA_5_io_y = io_y[23:20]; // @[CSK.scala 23:11]
  assign CRA_5_io_cin = CRA_4_io_cout | _T_29; // @[CSK.scala 47:15]
  assign CRA_6_io_x = io_x[27:24]; // @[CSK.scala 22:11]
  assign CRA_6_io_y = io_y[27:24]; // @[CSK.scala 23:11]
  assign CRA_6_io_cin = CRA_5_io_cout | _T_32; // @[CSK.scala 47:15]
  assign CRA_7_io_x = io_x[31:28]; // @[CSK.scala 22:11]
  assign CRA_7_io_y = io_y[31:28]; // @[CSK.scala 23:11]
  assign CRA_7_io_cin = CRA_6_io_cout | _T_35; // @[CSK.scala 47:15]
endmodule
