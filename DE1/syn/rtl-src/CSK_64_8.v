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
  input  [7:0] io_x,
  input  [7:0] io_y,
  input        io_cin,
  output [7:0] io_s,
  output       io_cout,
  output [7:0] io_p
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
  wire  FA1_2_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_2_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_2_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_2_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_2_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_2_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_3_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_4_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_5_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_6_io_p; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_x; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_y; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_cin; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_s; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_cout; // @[adder.CRA.scala 22:20]
  wire  FA1_7_io_p; // @[adder.CRA.scala 22:20]
  wire  _T_16_1; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_0; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_3; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_2; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire [3:0] _T_19; // @[adder.CRA.scala 38:44]
  wire  _T_16_5; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_4; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_7; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire  _T_16_6; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  wire [3:0] _T_22; // @[adder.CRA.scala 38:44]
  wire  _T_32_1; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_0; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_3; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_2; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire [3:0] _T_35; // @[adder.CRA.scala 42:44]
  wire  _T_32_5; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_4; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_7; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire  _T_32_6; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  wire [3:0] _T_38; // @[adder.CRA.scala 42:44]
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
  FA1 FA1_2 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_2_io_x),
    .io_y(FA1_2_io_y),
    .io_cin(FA1_2_io_cin),
    .io_s(FA1_2_io_s),
    .io_cout(FA1_2_io_cout),
    .io_p(FA1_2_io_p)
  );
  FA1 FA1_3 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_3_io_x),
    .io_y(FA1_3_io_y),
    .io_cin(FA1_3_io_cin),
    .io_s(FA1_3_io_s),
    .io_cout(FA1_3_io_cout),
    .io_p(FA1_3_io_p)
  );
  FA1 FA1_4 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_4_io_x),
    .io_y(FA1_4_io_y),
    .io_cin(FA1_4_io_cin),
    .io_s(FA1_4_io_s),
    .io_cout(FA1_4_io_cout),
    .io_p(FA1_4_io_p)
  );
  FA1 FA1_5 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_5_io_x),
    .io_y(FA1_5_io_y),
    .io_cin(FA1_5_io_cin),
    .io_s(FA1_5_io_s),
    .io_cout(FA1_5_io_cout),
    .io_p(FA1_5_io_p)
  );
  FA1 FA1_6 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_6_io_x),
    .io_y(FA1_6_io_y),
    .io_cin(FA1_6_io_cin),
    .io_s(FA1_6_io_s),
    .io_cout(FA1_6_io_cout),
    .io_p(FA1_6_io_p)
  );
  FA1 FA1_7 ( // @[adder.CRA.scala 22:20]
    .io_x(FA1_7_io_x),
    .io_y(FA1_7_io_y),
    .io_cin(FA1_7_io_cin),
    .io_s(FA1_7_io_s),
    .io_cout(FA1_7_io_cout),
    .io_p(FA1_7_io_p)
  );
  assign _T_16_1 = FA1_1_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_0 = FA1_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_3 = FA1_3_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_2 = FA1_2_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_19 = {_T_16_3,_T_16_2,_T_16_1,_T_16_0}; // @[adder.CRA.scala 38:44]
  assign _T_16_5 = FA1_5_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_4 = FA1_4_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_7 = FA1_7_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_16_6 = FA1_6_io_s; // @[adder.CRA.scala 38:18 adder.CRA.scala 38:18]
  assign _T_22 = {_T_16_7,_T_16_6,_T_16_5,_T_16_4}; // @[adder.CRA.scala 38:44]
  assign _T_32_1 = FA1_1_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_0 = FA1_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_3 = FA1_3_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_2 = FA1_2_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_35 = {_T_32_3,_T_32_2,_T_32_1,_T_32_0}; // @[adder.CRA.scala 42:44]
  assign _T_32_5 = FA1_5_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_4 = FA1_4_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_7 = FA1_7_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_32_6 = FA1_6_io_p; // @[adder.CRA.scala 42:18 adder.CRA.scala 42:18]
  assign _T_38 = {_T_32_7,_T_32_6,_T_32_5,_T_32_4}; // @[adder.CRA.scala 42:44]
  assign io_s = {_T_22,_T_19}; // @[adder.CRA.scala 38:8]
  assign io_cout = FA1_7_io_cout; // @[adder.CRA.scala 35:11]
  assign io_p = {_T_38,_T_35}; // @[adder.CRA.scala 42:8]
  assign FA1_io_x = io_x[0]; // @[adder.CRA.scala 23:10]
  assign FA1_io_y = io_y[0]; // @[adder.CRA.scala 24:10]
  assign FA1_io_cin = io_cin; // @[adder.CRA.scala 34:21]
  assign FA1_1_io_x = io_x[1]; // @[adder.CRA.scala 23:10]
  assign FA1_1_io_y = io_y[1]; // @[adder.CRA.scala 24:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_2_io_x = io_x[2]; // @[adder.CRA.scala 23:10]
  assign FA1_2_io_y = io_y[2]; // @[adder.CRA.scala 24:10]
  assign FA1_2_io_cin = FA1_1_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_3_io_x = io_x[3]; // @[adder.CRA.scala 23:10]
  assign FA1_3_io_y = io_y[3]; // @[adder.CRA.scala 24:10]
  assign FA1_3_io_cin = FA1_2_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_4_io_x = io_x[4]; // @[adder.CRA.scala 23:10]
  assign FA1_4_io_y = io_y[4]; // @[adder.CRA.scala 24:10]
  assign FA1_4_io_cin = FA1_3_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_5_io_x = io_x[5]; // @[adder.CRA.scala 23:10]
  assign FA1_5_io_y = io_y[5]; // @[adder.CRA.scala 24:10]
  assign FA1_5_io_cin = FA1_4_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_6_io_x = io_x[6]; // @[adder.CRA.scala 23:10]
  assign FA1_6_io_y = io_y[6]; // @[adder.CRA.scala 24:10]
  assign FA1_6_io_cin = FA1_5_io_cout; // @[adder.CRA.scala 30:27]
  assign FA1_7_io_x = io_x[7]; // @[adder.CRA.scala 23:10]
  assign FA1_7_io_y = io_y[7]; // @[adder.CRA.scala 24:10]
  assign FA1_7_io_cin = FA1_6_io_cout; // @[adder.CRA.scala 30:27]
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
  wire [7:0] CRA_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_1_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_1_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_1_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_1_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_1_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_1_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_2_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_2_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_2_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_2_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_2_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_2_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_3_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_3_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_3_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_3_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_3_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_3_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_4_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_4_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_4_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_4_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_4_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_4_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_5_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_5_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_5_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_5_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_5_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_5_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_6_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_6_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_6_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_6_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_6_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_6_io_p; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_7_io_x; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_7_io_y; // @[adder.CSK.scala 21:21]
  wire  CRA_7_io_cin; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_7_io_s; // @[adder.CSK.scala 21:21]
  wire  CRA_7_io_cout; // @[adder.CSK.scala 21:21]
  wire [7:0] CRA_7_io_p; // @[adder.CSK.scala 21:21]
  wire  _T_16; // @[adder.CSK.scala 36:28]
  wire  _T_17; // @[adder.CSK.scala 43:37]
  wire  _T_19; // @[adder.CSK.scala 36:28]
  wire  _T_20; // @[adder.CSK.scala 47:37]
  wire  _T_22; // @[adder.CSK.scala 36:28]
  wire  _T_23; // @[adder.CSK.scala 47:37]
  wire  _T_25; // @[adder.CSK.scala 36:28]
  wire  _T_26; // @[adder.CSK.scala 47:37]
  wire  _T_28; // @[adder.CSK.scala 36:28]
  wire  _T_29; // @[adder.CSK.scala 47:37]
  wire  _T_31; // @[adder.CSK.scala 36:28]
  wire  _T_32; // @[adder.CSK.scala 47:37]
  wire  _T_34; // @[adder.CSK.scala 36:28]
  wire  _T_35; // @[adder.CSK.scala 47:37]
  wire [55:0] _T_42; // @[Cat.scala 29:58]
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
  assign _T_16 = CRA_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_17 = _T_16 & io_cin; // @[adder.CSK.scala 43:37]
  assign _T_19 = CRA_1_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_20 = _T_19 & CRA_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_22 = CRA_2_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_23 = _T_22 & CRA_1_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_25 = CRA_3_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_26 = _T_25 & CRA_2_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_28 = CRA_4_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_29 = _T_28 & CRA_3_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_31 = CRA_5_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_32 = _T_31 & CRA_4_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_34 = CRA_6_io_p == 8'hff; // @[adder.CSK.scala 36:28]
  assign _T_35 = _T_34 & CRA_5_io_cout; // @[adder.CSK.scala 47:37]
  assign _T_42 = {CRA_7_io_s,CRA_6_io_s,CRA_5_io_s,CRA_4_io_s,CRA_3_io_s,CRA_2_io_s,CRA_1_io_s}; // @[Cat.scala 29:58]
  assign io_s = {_T_42,CRA_io_s}; // @[adder.CSK.scala 52:8]
  assign io_cout = CRA_7_io_cout; // @[adder.CSK.scala 39:15]
  assign CRA_io_x = io_x[7:0]; // @[adder.CSK.scala 22:11]
  assign CRA_io_y = io_y[7:0]; // @[adder.CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[adder.CSK.scala 26:15]
  assign CRA_1_io_x = io_x[15:8]; // @[adder.CSK.scala 22:11]
  assign CRA_1_io_y = io_y[15:8]; // @[adder.CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_17; // @[adder.CSK.scala 43:15]
  assign CRA_2_io_x = io_x[23:16]; // @[adder.CSK.scala 22:11]
  assign CRA_2_io_y = io_y[23:16]; // @[adder.CSK.scala 23:11]
  assign CRA_2_io_cin = CRA_1_io_cout | _T_20; // @[adder.CSK.scala 47:15]
  assign CRA_3_io_x = io_x[31:24]; // @[adder.CSK.scala 22:11]
  assign CRA_3_io_y = io_y[31:24]; // @[adder.CSK.scala 23:11]
  assign CRA_3_io_cin = CRA_2_io_cout | _T_23; // @[adder.CSK.scala 47:15]
  assign CRA_4_io_x = io_x[39:32]; // @[adder.CSK.scala 22:11]
  assign CRA_4_io_y = io_y[39:32]; // @[adder.CSK.scala 23:11]
  assign CRA_4_io_cin = CRA_3_io_cout | _T_26; // @[adder.CSK.scala 47:15]
  assign CRA_5_io_x = io_x[47:40]; // @[adder.CSK.scala 22:11]
  assign CRA_5_io_y = io_y[47:40]; // @[adder.CSK.scala 23:11]
  assign CRA_5_io_cin = CRA_4_io_cout | _T_29; // @[adder.CSK.scala 47:15]
  assign CRA_6_io_x = io_x[55:48]; // @[adder.CSK.scala 22:11]
  assign CRA_6_io_y = io_y[55:48]; // @[adder.CSK.scala 23:11]
  assign CRA_6_io_cin = CRA_5_io_cout | _T_32; // @[adder.CSK.scala 47:15]
  assign CRA_7_io_x = io_x[63:56]; // @[adder.CSK.scala 22:11]
  assign CRA_7_io_y = io_y[63:56]; // @[adder.CSK.scala 23:11]
  assign CRA_7_io_cin = CRA_6_io_cout | _T_35; // @[adder.CSK.scala 47:15]
endmodule
