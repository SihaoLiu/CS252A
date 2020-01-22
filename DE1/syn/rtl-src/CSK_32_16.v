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
  input  [15:0] io_x,
  input  [15:0] io_y,
  input         io_cin,
  output [15:0] io_s,
  output        io_cout,
  output [15:0] io_p
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
  wire  FA1_4_io_x; // @[CRA.scala 22:20]
  wire  FA1_4_io_y; // @[CRA.scala 22:20]
  wire  FA1_4_io_cin; // @[CRA.scala 22:20]
  wire  FA1_4_io_s; // @[CRA.scala 22:20]
  wire  FA1_4_io_cout; // @[CRA.scala 22:20]
  wire  FA1_4_io_p; // @[CRA.scala 22:20]
  wire  FA1_5_io_x; // @[CRA.scala 22:20]
  wire  FA1_5_io_y; // @[CRA.scala 22:20]
  wire  FA1_5_io_cin; // @[CRA.scala 22:20]
  wire  FA1_5_io_s; // @[CRA.scala 22:20]
  wire  FA1_5_io_cout; // @[CRA.scala 22:20]
  wire  FA1_5_io_p; // @[CRA.scala 22:20]
  wire  FA1_6_io_x; // @[CRA.scala 22:20]
  wire  FA1_6_io_y; // @[CRA.scala 22:20]
  wire  FA1_6_io_cin; // @[CRA.scala 22:20]
  wire  FA1_6_io_s; // @[CRA.scala 22:20]
  wire  FA1_6_io_cout; // @[CRA.scala 22:20]
  wire  FA1_6_io_p; // @[CRA.scala 22:20]
  wire  FA1_7_io_x; // @[CRA.scala 22:20]
  wire  FA1_7_io_y; // @[CRA.scala 22:20]
  wire  FA1_7_io_cin; // @[CRA.scala 22:20]
  wire  FA1_7_io_s; // @[CRA.scala 22:20]
  wire  FA1_7_io_cout; // @[CRA.scala 22:20]
  wire  FA1_7_io_p; // @[CRA.scala 22:20]
  wire  FA1_8_io_x; // @[CRA.scala 22:20]
  wire  FA1_8_io_y; // @[CRA.scala 22:20]
  wire  FA1_8_io_cin; // @[CRA.scala 22:20]
  wire  FA1_8_io_s; // @[CRA.scala 22:20]
  wire  FA1_8_io_cout; // @[CRA.scala 22:20]
  wire  FA1_8_io_p; // @[CRA.scala 22:20]
  wire  FA1_9_io_x; // @[CRA.scala 22:20]
  wire  FA1_9_io_y; // @[CRA.scala 22:20]
  wire  FA1_9_io_cin; // @[CRA.scala 22:20]
  wire  FA1_9_io_s; // @[CRA.scala 22:20]
  wire  FA1_9_io_cout; // @[CRA.scala 22:20]
  wire  FA1_9_io_p; // @[CRA.scala 22:20]
  wire  FA1_10_io_x; // @[CRA.scala 22:20]
  wire  FA1_10_io_y; // @[CRA.scala 22:20]
  wire  FA1_10_io_cin; // @[CRA.scala 22:20]
  wire  FA1_10_io_s; // @[CRA.scala 22:20]
  wire  FA1_10_io_cout; // @[CRA.scala 22:20]
  wire  FA1_10_io_p; // @[CRA.scala 22:20]
  wire  FA1_11_io_x; // @[CRA.scala 22:20]
  wire  FA1_11_io_y; // @[CRA.scala 22:20]
  wire  FA1_11_io_cin; // @[CRA.scala 22:20]
  wire  FA1_11_io_s; // @[CRA.scala 22:20]
  wire  FA1_11_io_cout; // @[CRA.scala 22:20]
  wire  FA1_11_io_p; // @[CRA.scala 22:20]
  wire  FA1_12_io_x; // @[CRA.scala 22:20]
  wire  FA1_12_io_y; // @[CRA.scala 22:20]
  wire  FA1_12_io_cin; // @[CRA.scala 22:20]
  wire  FA1_12_io_s; // @[CRA.scala 22:20]
  wire  FA1_12_io_cout; // @[CRA.scala 22:20]
  wire  FA1_12_io_p; // @[CRA.scala 22:20]
  wire  FA1_13_io_x; // @[CRA.scala 22:20]
  wire  FA1_13_io_y; // @[CRA.scala 22:20]
  wire  FA1_13_io_cin; // @[CRA.scala 22:20]
  wire  FA1_13_io_s; // @[CRA.scala 22:20]
  wire  FA1_13_io_cout; // @[CRA.scala 22:20]
  wire  FA1_13_io_p; // @[CRA.scala 22:20]
  wire  FA1_14_io_x; // @[CRA.scala 22:20]
  wire  FA1_14_io_y; // @[CRA.scala 22:20]
  wire  FA1_14_io_cin; // @[CRA.scala 22:20]
  wire  FA1_14_io_s; // @[CRA.scala 22:20]
  wire  FA1_14_io_cout; // @[CRA.scala 22:20]
  wire  FA1_14_io_p; // @[CRA.scala 22:20]
  wire  FA1_15_io_x; // @[CRA.scala 22:20]
  wire  FA1_15_io_y; // @[CRA.scala 22:20]
  wire  FA1_15_io_cin; // @[CRA.scala 22:20]
  wire  FA1_15_io_s; // @[CRA.scala 22:20]
  wire  FA1_15_io_cout; // @[CRA.scala 22:20]
  wire  FA1_15_io_p; // @[CRA.scala 22:20]
  wire  _T_32_1; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_0; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_3; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_2; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_5; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_4; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_7; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_6; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [7:0] _T_39; // @[CRA.scala 38:44]
  wire  _T_32_9; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_8; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_11; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_10; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_13; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_12; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_15; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_32_14; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [7:0] _T_46; // @[CRA.scala 38:44]
  wire  _T_64_1; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_0; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_3; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_2; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_5; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_4; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_7; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_6; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [7:0] _T_71; // @[CRA.scala 42:44]
  wire  _T_64_9; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_8; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_11; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_10; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_13; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_12; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_15; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_64_14; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [7:0] _T_78; // @[CRA.scala 42:44]
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
  FA1 FA1_4 ( // @[CRA.scala 22:20]
    .io_x(FA1_4_io_x),
    .io_y(FA1_4_io_y),
    .io_cin(FA1_4_io_cin),
    .io_s(FA1_4_io_s),
    .io_cout(FA1_4_io_cout),
    .io_p(FA1_4_io_p)
  );
  FA1 FA1_5 ( // @[CRA.scala 22:20]
    .io_x(FA1_5_io_x),
    .io_y(FA1_5_io_y),
    .io_cin(FA1_5_io_cin),
    .io_s(FA1_5_io_s),
    .io_cout(FA1_5_io_cout),
    .io_p(FA1_5_io_p)
  );
  FA1 FA1_6 ( // @[CRA.scala 22:20]
    .io_x(FA1_6_io_x),
    .io_y(FA1_6_io_y),
    .io_cin(FA1_6_io_cin),
    .io_s(FA1_6_io_s),
    .io_cout(FA1_6_io_cout),
    .io_p(FA1_6_io_p)
  );
  FA1 FA1_7 ( // @[CRA.scala 22:20]
    .io_x(FA1_7_io_x),
    .io_y(FA1_7_io_y),
    .io_cin(FA1_7_io_cin),
    .io_s(FA1_7_io_s),
    .io_cout(FA1_7_io_cout),
    .io_p(FA1_7_io_p)
  );
  FA1 FA1_8 ( // @[CRA.scala 22:20]
    .io_x(FA1_8_io_x),
    .io_y(FA1_8_io_y),
    .io_cin(FA1_8_io_cin),
    .io_s(FA1_8_io_s),
    .io_cout(FA1_8_io_cout),
    .io_p(FA1_8_io_p)
  );
  FA1 FA1_9 ( // @[CRA.scala 22:20]
    .io_x(FA1_9_io_x),
    .io_y(FA1_9_io_y),
    .io_cin(FA1_9_io_cin),
    .io_s(FA1_9_io_s),
    .io_cout(FA1_9_io_cout),
    .io_p(FA1_9_io_p)
  );
  FA1 FA1_10 ( // @[CRA.scala 22:20]
    .io_x(FA1_10_io_x),
    .io_y(FA1_10_io_y),
    .io_cin(FA1_10_io_cin),
    .io_s(FA1_10_io_s),
    .io_cout(FA1_10_io_cout),
    .io_p(FA1_10_io_p)
  );
  FA1 FA1_11 ( // @[CRA.scala 22:20]
    .io_x(FA1_11_io_x),
    .io_y(FA1_11_io_y),
    .io_cin(FA1_11_io_cin),
    .io_s(FA1_11_io_s),
    .io_cout(FA1_11_io_cout),
    .io_p(FA1_11_io_p)
  );
  FA1 FA1_12 ( // @[CRA.scala 22:20]
    .io_x(FA1_12_io_x),
    .io_y(FA1_12_io_y),
    .io_cin(FA1_12_io_cin),
    .io_s(FA1_12_io_s),
    .io_cout(FA1_12_io_cout),
    .io_p(FA1_12_io_p)
  );
  FA1 FA1_13 ( // @[CRA.scala 22:20]
    .io_x(FA1_13_io_x),
    .io_y(FA1_13_io_y),
    .io_cin(FA1_13_io_cin),
    .io_s(FA1_13_io_s),
    .io_cout(FA1_13_io_cout),
    .io_p(FA1_13_io_p)
  );
  FA1 FA1_14 ( // @[CRA.scala 22:20]
    .io_x(FA1_14_io_x),
    .io_y(FA1_14_io_y),
    .io_cin(FA1_14_io_cin),
    .io_s(FA1_14_io_s),
    .io_cout(FA1_14_io_cout),
    .io_p(FA1_14_io_p)
  );
  FA1 FA1_15 ( // @[CRA.scala 22:20]
    .io_x(FA1_15_io_x),
    .io_y(FA1_15_io_y),
    .io_cin(FA1_15_io_cin),
    .io_s(FA1_15_io_s),
    .io_cout(FA1_15_io_cout),
    .io_p(FA1_15_io_p)
  );
  assign _T_32_1 = FA1_1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_0 = FA1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_3 = FA1_3_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_2 = FA1_2_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_5 = FA1_5_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_4 = FA1_4_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_7 = FA1_7_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_6 = FA1_6_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_39 = {_T_32_7,_T_32_6,_T_32_5,_T_32_4,_T_32_3,_T_32_2,_T_32_1,_T_32_0}; // @[CRA.scala 38:44]
  assign _T_32_9 = FA1_9_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_8 = FA1_8_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_11 = FA1_11_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_10 = FA1_10_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_13 = FA1_13_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_12 = FA1_12_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_15 = FA1_15_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_32_14 = FA1_14_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_46 = {_T_32_15,_T_32_14,_T_32_13,_T_32_12,_T_32_11,_T_32_10,_T_32_9,_T_32_8}; // @[CRA.scala 38:44]
  assign _T_64_1 = FA1_1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_0 = FA1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_3 = FA1_3_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_2 = FA1_2_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_5 = FA1_5_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_4 = FA1_4_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_7 = FA1_7_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_6 = FA1_6_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_71 = {_T_64_7,_T_64_6,_T_64_5,_T_64_4,_T_64_3,_T_64_2,_T_64_1,_T_64_0}; // @[CRA.scala 42:44]
  assign _T_64_9 = FA1_9_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_8 = FA1_8_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_11 = FA1_11_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_10 = FA1_10_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_13 = FA1_13_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_12 = FA1_12_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_15 = FA1_15_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_64_14 = FA1_14_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_78 = {_T_64_15,_T_64_14,_T_64_13,_T_64_12,_T_64_11,_T_64_10,_T_64_9,_T_64_8}; // @[CRA.scala 42:44]
  assign io_s = {_T_46,_T_39}; // @[CRA.scala 38:8]
  assign io_cout = FA1_15_io_cout; // @[CRA.scala 35:11]
  assign io_p = {_T_78,_T_71}; // @[CRA.scala 42:8]
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
  assign FA1_4_io_x = io_x[4]; // @[CRA.scala 23:10]
  assign FA1_4_io_y = io_y[4]; // @[CRA.scala 24:10]
  assign FA1_4_io_cin = FA1_3_io_cout; // @[CRA.scala 30:27]
  assign FA1_5_io_x = io_x[5]; // @[CRA.scala 23:10]
  assign FA1_5_io_y = io_y[5]; // @[CRA.scala 24:10]
  assign FA1_5_io_cin = FA1_4_io_cout; // @[CRA.scala 30:27]
  assign FA1_6_io_x = io_x[6]; // @[CRA.scala 23:10]
  assign FA1_6_io_y = io_y[6]; // @[CRA.scala 24:10]
  assign FA1_6_io_cin = FA1_5_io_cout; // @[CRA.scala 30:27]
  assign FA1_7_io_x = io_x[7]; // @[CRA.scala 23:10]
  assign FA1_7_io_y = io_y[7]; // @[CRA.scala 24:10]
  assign FA1_7_io_cin = FA1_6_io_cout; // @[CRA.scala 30:27]
  assign FA1_8_io_x = io_x[8]; // @[CRA.scala 23:10]
  assign FA1_8_io_y = io_y[8]; // @[CRA.scala 24:10]
  assign FA1_8_io_cin = FA1_7_io_cout; // @[CRA.scala 30:27]
  assign FA1_9_io_x = io_x[9]; // @[CRA.scala 23:10]
  assign FA1_9_io_y = io_y[9]; // @[CRA.scala 24:10]
  assign FA1_9_io_cin = FA1_8_io_cout; // @[CRA.scala 30:27]
  assign FA1_10_io_x = io_x[10]; // @[CRA.scala 23:10]
  assign FA1_10_io_y = io_y[10]; // @[CRA.scala 24:10]
  assign FA1_10_io_cin = FA1_9_io_cout; // @[CRA.scala 30:27]
  assign FA1_11_io_x = io_x[11]; // @[CRA.scala 23:10]
  assign FA1_11_io_y = io_y[11]; // @[CRA.scala 24:10]
  assign FA1_11_io_cin = FA1_10_io_cout; // @[CRA.scala 30:27]
  assign FA1_12_io_x = io_x[12]; // @[CRA.scala 23:10]
  assign FA1_12_io_y = io_y[12]; // @[CRA.scala 24:10]
  assign FA1_12_io_cin = FA1_11_io_cout; // @[CRA.scala 30:27]
  assign FA1_13_io_x = io_x[13]; // @[CRA.scala 23:10]
  assign FA1_13_io_y = io_y[13]; // @[CRA.scala 24:10]
  assign FA1_13_io_cin = FA1_12_io_cout; // @[CRA.scala 30:27]
  assign FA1_14_io_x = io_x[14]; // @[CRA.scala 23:10]
  assign FA1_14_io_y = io_y[14]; // @[CRA.scala 24:10]
  assign FA1_14_io_cin = FA1_13_io_cout; // @[CRA.scala 30:27]
  assign FA1_15_io_x = io_x[15]; // @[CRA.scala 23:10]
  assign FA1_15_io_y = io_y[15]; // @[CRA.scala 24:10]
  assign FA1_15_io_cin = FA1_14_io_cout; // @[CRA.scala 30:27]
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
  wire [15:0] CRA_io_x; // @[CSK.scala 21:21]
  wire [15:0] CRA_io_y; // @[CSK.scala 21:21]
  wire  CRA_io_cin; // @[CSK.scala 21:21]
  wire [15:0] CRA_io_s; // @[CSK.scala 21:21]
  wire  CRA_io_cout; // @[CSK.scala 21:21]
  wire [15:0] CRA_io_p; // @[CSK.scala 21:21]
  wire [15:0] CRA_1_io_x; // @[CSK.scala 21:21]
  wire [15:0] CRA_1_io_y; // @[CSK.scala 21:21]
  wire  CRA_1_io_cin; // @[CSK.scala 21:21]
  wire [15:0] CRA_1_io_s; // @[CSK.scala 21:21]
  wire  CRA_1_io_cout; // @[CSK.scala 21:21]
  wire [15:0] CRA_1_io_p; // @[CSK.scala 21:21]
  wire  _T_4; // @[CSK.scala 36:28]
  wire  _T_5; // @[CSK.scala 43:37]
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
  assign _T_4 = CRA_io_p == 16'hffff; // @[CSK.scala 36:28]
  assign _T_5 = _T_4 & io_cin; // @[CSK.scala 43:37]
  assign io_s = {CRA_1_io_s,CRA_io_s}; // @[CSK.scala 52:8]
  assign io_cout = CRA_1_io_cout; // @[CSK.scala 39:15]
  assign CRA_io_x = io_x[15:0]; // @[CSK.scala 22:11]
  assign CRA_io_y = io_y[15:0]; // @[CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[CSK.scala 26:15]
  assign CRA_1_io_x = io_x[31:16]; // @[CSK.scala 22:11]
  assign CRA_1_io_y = io_y[31:16]; // @[CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_5; // @[CSK.scala 43:15]
endmodule
