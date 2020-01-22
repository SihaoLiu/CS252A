;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit CRA : 
  module FA1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_33 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_34 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_35 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_36 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_37 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_38 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_39 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_40 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_41 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_42 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_43 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_44 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_45 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_46 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_47 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_48 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_49 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_50 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_51 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_52 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_53 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_54 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_55 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_56 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_57 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_58 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_59 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_60 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_61 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_62 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module FA1_63 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 17:23]
    node g = and(io.x, io.y) @[FA1.scala 18:23]
    node _T = xor(p, io.cin) @[FA1.scala 21:13]
    io.s <= _T @[FA1.scala 21:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 24:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 24:16]
    io.cout <= _T_2 @[FA1.scala 24:11]
    
  module CRA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<64>, flip y : UInt<64>, flip cin : UInt<1>, s : UInt<64>, cout : UInt<1>}
    
    inst FA1 of FA1 @[CRA.scala 19:20]
    FA1.clock <= clock
    FA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CRA.scala 20:17]
    FA1.io.x <= _T @[CRA.scala 20:10]
    node _T_1 = bits(io.y, 0, 0) @[CRA.scala 21:17]
    FA1.io.y <= _T_1 @[CRA.scala 21:10]
    inst FA1_1 of FA1_1 @[CRA.scala 19:20]
    FA1_1.clock <= clock
    FA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CRA.scala 20:17]
    FA1_1.io.x <= _T_2 @[CRA.scala 20:10]
    node _T_3 = bits(io.y, 1, 1) @[CRA.scala 21:17]
    FA1_1.io.y <= _T_3 @[CRA.scala 21:10]
    inst FA1_2 of FA1_2 @[CRA.scala 19:20]
    FA1_2.clock <= clock
    FA1_2.reset <= reset
    node _T_4 = bits(io.x, 2, 2) @[CRA.scala 20:17]
    FA1_2.io.x <= _T_4 @[CRA.scala 20:10]
    node _T_5 = bits(io.y, 2, 2) @[CRA.scala 21:17]
    FA1_2.io.y <= _T_5 @[CRA.scala 21:10]
    inst FA1_3 of FA1_3 @[CRA.scala 19:20]
    FA1_3.clock <= clock
    FA1_3.reset <= reset
    node _T_6 = bits(io.x, 3, 3) @[CRA.scala 20:17]
    FA1_3.io.x <= _T_6 @[CRA.scala 20:10]
    node _T_7 = bits(io.y, 3, 3) @[CRA.scala 21:17]
    FA1_3.io.y <= _T_7 @[CRA.scala 21:10]
    inst FA1_4 of FA1_4 @[CRA.scala 19:20]
    FA1_4.clock <= clock
    FA1_4.reset <= reset
    node _T_8 = bits(io.x, 4, 4) @[CRA.scala 20:17]
    FA1_4.io.x <= _T_8 @[CRA.scala 20:10]
    node _T_9 = bits(io.y, 4, 4) @[CRA.scala 21:17]
    FA1_4.io.y <= _T_9 @[CRA.scala 21:10]
    inst FA1_5 of FA1_5 @[CRA.scala 19:20]
    FA1_5.clock <= clock
    FA1_5.reset <= reset
    node _T_10 = bits(io.x, 5, 5) @[CRA.scala 20:17]
    FA1_5.io.x <= _T_10 @[CRA.scala 20:10]
    node _T_11 = bits(io.y, 5, 5) @[CRA.scala 21:17]
    FA1_5.io.y <= _T_11 @[CRA.scala 21:10]
    inst FA1_6 of FA1_6 @[CRA.scala 19:20]
    FA1_6.clock <= clock
    FA1_6.reset <= reset
    node _T_12 = bits(io.x, 6, 6) @[CRA.scala 20:17]
    FA1_6.io.x <= _T_12 @[CRA.scala 20:10]
    node _T_13 = bits(io.y, 6, 6) @[CRA.scala 21:17]
    FA1_6.io.y <= _T_13 @[CRA.scala 21:10]
    inst FA1_7 of FA1_7 @[CRA.scala 19:20]
    FA1_7.clock <= clock
    FA1_7.reset <= reset
    node _T_14 = bits(io.x, 7, 7) @[CRA.scala 20:17]
    FA1_7.io.x <= _T_14 @[CRA.scala 20:10]
    node _T_15 = bits(io.y, 7, 7) @[CRA.scala 21:17]
    FA1_7.io.y <= _T_15 @[CRA.scala 21:10]
    inst FA1_8 of FA1_8 @[CRA.scala 19:20]
    FA1_8.clock <= clock
    FA1_8.reset <= reset
    node _T_16 = bits(io.x, 8, 8) @[CRA.scala 20:17]
    FA1_8.io.x <= _T_16 @[CRA.scala 20:10]
    node _T_17 = bits(io.y, 8, 8) @[CRA.scala 21:17]
    FA1_8.io.y <= _T_17 @[CRA.scala 21:10]
    inst FA1_9 of FA1_9 @[CRA.scala 19:20]
    FA1_9.clock <= clock
    FA1_9.reset <= reset
    node _T_18 = bits(io.x, 9, 9) @[CRA.scala 20:17]
    FA1_9.io.x <= _T_18 @[CRA.scala 20:10]
    node _T_19 = bits(io.y, 9, 9) @[CRA.scala 21:17]
    FA1_9.io.y <= _T_19 @[CRA.scala 21:10]
    inst FA1_10 of FA1_10 @[CRA.scala 19:20]
    FA1_10.clock <= clock
    FA1_10.reset <= reset
    node _T_20 = bits(io.x, 10, 10) @[CRA.scala 20:17]
    FA1_10.io.x <= _T_20 @[CRA.scala 20:10]
    node _T_21 = bits(io.y, 10, 10) @[CRA.scala 21:17]
    FA1_10.io.y <= _T_21 @[CRA.scala 21:10]
    inst FA1_11 of FA1_11 @[CRA.scala 19:20]
    FA1_11.clock <= clock
    FA1_11.reset <= reset
    node _T_22 = bits(io.x, 11, 11) @[CRA.scala 20:17]
    FA1_11.io.x <= _T_22 @[CRA.scala 20:10]
    node _T_23 = bits(io.y, 11, 11) @[CRA.scala 21:17]
    FA1_11.io.y <= _T_23 @[CRA.scala 21:10]
    inst FA1_12 of FA1_12 @[CRA.scala 19:20]
    FA1_12.clock <= clock
    FA1_12.reset <= reset
    node _T_24 = bits(io.x, 12, 12) @[CRA.scala 20:17]
    FA1_12.io.x <= _T_24 @[CRA.scala 20:10]
    node _T_25 = bits(io.y, 12, 12) @[CRA.scala 21:17]
    FA1_12.io.y <= _T_25 @[CRA.scala 21:10]
    inst FA1_13 of FA1_13 @[CRA.scala 19:20]
    FA1_13.clock <= clock
    FA1_13.reset <= reset
    node _T_26 = bits(io.x, 13, 13) @[CRA.scala 20:17]
    FA1_13.io.x <= _T_26 @[CRA.scala 20:10]
    node _T_27 = bits(io.y, 13, 13) @[CRA.scala 21:17]
    FA1_13.io.y <= _T_27 @[CRA.scala 21:10]
    inst FA1_14 of FA1_14 @[CRA.scala 19:20]
    FA1_14.clock <= clock
    FA1_14.reset <= reset
    node _T_28 = bits(io.x, 14, 14) @[CRA.scala 20:17]
    FA1_14.io.x <= _T_28 @[CRA.scala 20:10]
    node _T_29 = bits(io.y, 14, 14) @[CRA.scala 21:17]
    FA1_14.io.y <= _T_29 @[CRA.scala 21:10]
    inst FA1_15 of FA1_15 @[CRA.scala 19:20]
    FA1_15.clock <= clock
    FA1_15.reset <= reset
    node _T_30 = bits(io.x, 15, 15) @[CRA.scala 20:17]
    FA1_15.io.x <= _T_30 @[CRA.scala 20:10]
    node _T_31 = bits(io.y, 15, 15) @[CRA.scala 21:17]
    FA1_15.io.y <= _T_31 @[CRA.scala 21:10]
    inst FA1_16 of FA1_16 @[CRA.scala 19:20]
    FA1_16.clock <= clock
    FA1_16.reset <= reset
    node _T_32 = bits(io.x, 16, 16) @[CRA.scala 20:17]
    FA1_16.io.x <= _T_32 @[CRA.scala 20:10]
    node _T_33 = bits(io.y, 16, 16) @[CRA.scala 21:17]
    FA1_16.io.y <= _T_33 @[CRA.scala 21:10]
    inst FA1_17 of FA1_17 @[CRA.scala 19:20]
    FA1_17.clock <= clock
    FA1_17.reset <= reset
    node _T_34 = bits(io.x, 17, 17) @[CRA.scala 20:17]
    FA1_17.io.x <= _T_34 @[CRA.scala 20:10]
    node _T_35 = bits(io.y, 17, 17) @[CRA.scala 21:17]
    FA1_17.io.y <= _T_35 @[CRA.scala 21:10]
    inst FA1_18 of FA1_18 @[CRA.scala 19:20]
    FA1_18.clock <= clock
    FA1_18.reset <= reset
    node _T_36 = bits(io.x, 18, 18) @[CRA.scala 20:17]
    FA1_18.io.x <= _T_36 @[CRA.scala 20:10]
    node _T_37 = bits(io.y, 18, 18) @[CRA.scala 21:17]
    FA1_18.io.y <= _T_37 @[CRA.scala 21:10]
    inst FA1_19 of FA1_19 @[CRA.scala 19:20]
    FA1_19.clock <= clock
    FA1_19.reset <= reset
    node _T_38 = bits(io.x, 19, 19) @[CRA.scala 20:17]
    FA1_19.io.x <= _T_38 @[CRA.scala 20:10]
    node _T_39 = bits(io.y, 19, 19) @[CRA.scala 21:17]
    FA1_19.io.y <= _T_39 @[CRA.scala 21:10]
    inst FA1_20 of FA1_20 @[CRA.scala 19:20]
    FA1_20.clock <= clock
    FA1_20.reset <= reset
    node _T_40 = bits(io.x, 20, 20) @[CRA.scala 20:17]
    FA1_20.io.x <= _T_40 @[CRA.scala 20:10]
    node _T_41 = bits(io.y, 20, 20) @[CRA.scala 21:17]
    FA1_20.io.y <= _T_41 @[CRA.scala 21:10]
    inst FA1_21 of FA1_21 @[CRA.scala 19:20]
    FA1_21.clock <= clock
    FA1_21.reset <= reset
    node _T_42 = bits(io.x, 21, 21) @[CRA.scala 20:17]
    FA1_21.io.x <= _T_42 @[CRA.scala 20:10]
    node _T_43 = bits(io.y, 21, 21) @[CRA.scala 21:17]
    FA1_21.io.y <= _T_43 @[CRA.scala 21:10]
    inst FA1_22 of FA1_22 @[CRA.scala 19:20]
    FA1_22.clock <= clock
    FA1_22.reset <= reset
    node _T_44 = bits(io.x, 22, 22) @[CRA.scala 20:17]
    FA1_22.io.x <= _T_44 @[CRA.scala 20:10]
    node _T_45 = bits(io.y, 22, 22) @[CRA.scala 21:17]
    FA1_22.io.y <= _T_45 @[CRA.scala 21:10]
    inst FA1_23 of FA1_23 @[CRA.scala 19:20]
    FA1_23.clock <= clock
    FA1_23.reset <= reset
    node _T_46 = bits(io.x, 23, 23) @[CRA.scala 20:17]
    FA1_23.io.x <= _T_46 @[CRA.scala 20:10]
    node _T_47 = bits(io.y, 23, 23) @[CRA.scala 21:17]
    FA1_23.io.y <= _T_47 @[CRA.scala 21:10]
    inst FA1_24 of FA1_24 @[CRA.scala 19:20]
    FA1_24.clock <= clock
    FA1_24.reset <= reset
    node _T_48 = bits(io.x, 24, 24) @[CRA.scala 20:17]
    FA1_24.io.x <= _T_48 @[CRA.scala 20:10]
    node _T_49 = bits(io.y, 24, 24) @[CRA.scala 21:17]
    FA1_24.io.y <= _T_49 @[CRA.scala 21:10]
    inst FA1_25 of FA1_25 @[CRA.scala 19:20]
    FA1_25.clock <= clock
    FA1_25.reset <= reset
    node _T_50 = bits(io.x, 25, 25) @[CRA.scala 20:17]
    FA1_25.io.x <= _T_50 @[CRA.scala 20:10]
    node _T_51 = bits(io.y, 25, 25) @[CRA.scala 21:17]
    FA1_25.io.y <= _T_51 @[CRA.scala 21:10]
    inst FA1_26 of FA1_26 @[CRA.scala 19:20]
    FA1_26.clock <= clock
    FA1_26.reset <= reset
    node _T_52 = bits(io.x, 26, 26) @[CRA.scala 20:17]
    FA1_26.io.x <= _T_52 @[CRA.scala 20:10]
    node _T_53 = bits(io.y, 26, 26) @[CRA.scala 21:17]
    FA1_26.io.y <= _T_53 @[CRA.scala 21:10]
    inst FA1_27 of FA1_27 @[CRA.scala 19:20]
    FA1_27.clock <= clock
    FA1_27.reset <= reset
    node _T_54 = bits(io.x, 27, 27) @[CRA.scala 20:17]
    FA1_27.io.x <= _T_54 @[CRA.scala 20:10]
    node _T_55 = bits(io.y, 27, 27) @[CRA.scala 21:17]
    FA1_27.io.y <= _T_55 @[CRA.scala 21:10]
    inst FA1_28 of FA1_28 @[CRA.scala 19:20]
    FA1_28.clock <= clock
    FA1_28.reset <= reset
    node _T_56 = bits(io.x, 28, 28) @[CRA.scala 20:17]
    FA1_28.io.x <= _T_56 @[CRA.scala 20:10]
    node _T_57 = bits(io.y, 28, 28) @[CRA.scala 21:17]
    FA1_28.io.y <= _T_57 @[CRA.scala 21:10]
    inst FA1_29 of FA1_29 @[CRA.scala 19:20]
    FA1_29.clock <= clock
    FA1_29.reset <= reset
    node _T_58 = bits(io.x, 29, 29) @[CRA.scala 20:17]
    FA1_29.io.x <= _T_58 @[CRA.scala 20:10]
    node _T_59 = bits(io.y, 29, 29) @[CRA.scala 21:17]
    FA1_29.io.y <= _T_59 @[CRA.scala 21:10]
    inst FA1_30 of FA1_30 @[CRA.scala 19:20]
    FA1_30.clock <= clock
    FA1_30.reset <= reset
    node _T_60 = bits(io.x, 30, 30) @[CRA.scala 20:17]
    FA1_30.io.x <= _T_60 @[CRA.scala 20:10]
    node _T_61 = bits(io.y, 30, 30) @[CRA.scala 21:17]
    FA1_30.io.y <= _T_61 @[CRA.scala 21:10]
    inst FA1_31 of FA1_31 @[CRA.scala 19:20]
    FA1_31.clock <= clock
    FA1_31.reset <= reset
    node _T_62 = bits(io.x, 31, 31) @[CRA.scala 20:17]
    FA1_31.io.x <= _T_62 @[CRA.scala 20:10]
    node _T_63 = bits(io.y, 31, 31) @[CRA.scala 21:17]
    FA1_31.io.y <= _T_63 @[CRA.scala 21:10]
    inst FA1_32 of FA1_32 @[CRA.scala 19:20]
    FA1_32.clock <= clock
    FA1_32.reset <= reset
    node _T_64 = bits(io.x, 32, 32) @[CRA.scala 20:17]
    FA1_32.io.x <= _T_64 @[CRA.scala 20:10]
    node _T_65 = bits(io.y, 32, 32) @[CRA.scala 21:17]
    FA1_32.io.y <= _T_65 @[CRA.scala 21:10]
    inst FA1_33 of FA1_33 @[CRA.scala 19:20]
    FA1_33.clock <= clock
    FA1_33.reset <= reset
    node _T_66 = bits(io.x, 33, 33) @[CRA.scala 20:17]
    FA1_33.io.x <= _T_66 @[CRA.scala 20:10]
    node _T_67 = bits(io.y, 33, 33) @[CRA.scala 21:17]
    FA1_33.io.y <= _T_67 @[CRA.scala 21:10]
    inst FA1_34 of FA1_34 @[CRA.scala 19:20]
    FA1_34.clock <= clock
    FA1_34.reset <= reset
    node _T_68 = bits(io.x, 34, 34) @[CRA.scala 20:17]
    FA1_34.io.x <= _T_68 @[CRA.scala 20:10]
    node _T_69 = bits(io.y, 34, 34) @[CRA.scala 21:17]
    FA1_34.io.y <= _T_69 @[CRA.scala 21:10]
    inst FA1_35 of FA1_35 @[CRA.scala 19:20]
    FA1_35.clock <= clock
    FA1_35.reset <= reset
    node _T_70 = bits(io.x, 35, 35) @[CRA.scala 20:17]
    FA1_35.io.x <= _T_70 @[CRA.scala 20:10]
    node _T_71 = bits(io.y, 35, 35) @[CRA.scala 21:17]
    FA1_35.io.y <= _T_71 @[CRA.scala 21:10]
    inst FA1_36 of FA1_36 @[CRA.scala 19:20]
    FA1_36.clock <= clock
    FA1_36.reset <= reset
    node _T_72 = bits(io.x, 36, 36) @[CRA.scala 20:17]
    FA1_36.io.x <= _T_72 @[CRA.scala 20:10]
    node _T_73 = bits(io.y, 36, 36) @[CRA.scala 21:17]
    FA1_36.io.y <= _T_73 @[CRA.scala 21:10]
    inst FA1_37 of FA1_37 @[CRA.scala 19:20]
    FA1_37.clock <= clock
    FA1_37.reset <= reset
    node _T_74 = bits(io.x, 37, 37) @[CRA.scala 20:17]
    FA1_37.io.x <= _T_74 @[CRA.scala 20:10]
    node _T_75 = bits(io.y, 37, 37) @[CRA.scala 21:17]
    FA1_37.io.y <= _T_75 @[CRA.scala 21:10]
    inst FA1_38 of FA1_38 @[CRA.scala 19:20]
    FA1_38.clock <= clock
    FA1_38.reset <= reset
    node _T_76 = bits(io.x, 38, 38) @[CRA.scala 20:17]
    FA1_38.io.x <= _T_76 @[CRA.scala 20:10]
    node _T_77 = bits(io.y, 38, 38) @[CRA.scala 21:17]
    FA1_38.io.y <= _T_77 @[CRA.scala 21:10]
    inst FA1_39 of FA1_39 @[CRA.scala 19:20]
    FA1_39.clock <= clock
    FA1_39.reset <= reset
    node _T_78 = bits(io.x, 39, 39) @[CRA.scala 20:17]
    FA1_39.io.x <= _T_78 @[CRA.scala 20:10]
    node _T_79 = bits(io.y, 39, 39) @[CRA.scala 21:17]
    FA1_39.io.y <= _T_79 @[CRA.scala 21:10]
    inst FA1_40 of FA1_40 @[CRA.scala 19:20]
    FA1_40.clock <= clock
    FA1_40.reset <= reset
    node _T_80 = bits(io.x, 40, 40) @[CRA.scala 20:17]
    FA1_40.io.x <= _T_80 @[CRA.scala 20:10]
    node _T_81 = bits(io.y, 40, 40) @[CRA.scala 21:17]
    FA1_40.io.y <= _T_81 @[CRA.scala 21:10]
    inst FA1_41 of FA1_41 @[CRA.scala 19:20]
    FA1_41.clock <= clock
    FA1_41.reset <= reset
    node _T_82 = bits(io.x, 41, 41) @[CRA.scala 20:17]
    FA1_41.io.x <= _T_82 @[CRA.scala 20:10]
    node _T_83 = bits(io.y, 41, 41) @[CRA.scala 21:17]
    FA1_41.io.y <= _T_83 @[CRA.scala 21:10]
    inst FA1_42 of FA1_42 @[CRA.scala 19:20]
    FA1_42.clock <= clock
    FA1_42.reset <= reset
    node _T_84 = bits(io.x, 42, 42) @[CRA.scala 20:17]
    FA1_42.io.x <= _T_84 @[CRA.scala 20:10]
    node _T_85 = bits(io.y, 42, 42) @[CRA.scala 21:17]
    FA1_42.io.y <= _T_85 @[CRA.scala 21:10]
    inst FA1_43 of FA1_43 @[CRA.scala 19:20]
    FA1_43.clock <= clock
    FA1_43.reset <= reset
    node _T_86 = bits(io.x, 43, 43) @[CRA.scala 20:17]
    FA1_43.io.x <= _T_86 @[CRA.scala 20:10]
    node _T_87 = bits(io.y, 43, 43) @[CRA.scala 21:17]
    FA1_43.io.y <= _T_87 @[CRA.scala 21:10]
    inst FA1_44 of FA1_44 @[CRA.scala 19:20]
    FA1_44.clock <= clock
    FA1_44.reset <= reset
    node _T_88 = bits(io.x, 44, 44) @[CRA.scala 20:17]
    FA1_44.io.x <= _T_88 @[CRA.scala 20:10]
    node _T_89 = bits(io.y, 44, 44) @[CRA.scala 21:17]
    FA1_44.io.y <= _T_89 @[CRA.scala 21:10]
    inst FA1_45 of FA1_45 @[CRA.scala 19:20]
    FA1_45.clock <= clock
    FA1_45.reset <= reset
    node _T_90 = bits(io.x, 45, 45) @[CRA.scala 20:17]
    FA1_45.io.x <= _T_90 @[CRA.scala 20:10]
    node _T_91 = bits(io.y, 45, 45) @[CRA.scala 21:17]
    FA1_45.io.y <= _T_91 @[CRA.scala 21:10]
    inst FA1_46 of FA1_46 @[CRA.scala 19:20]
    FA1_46.clock <= clock
    FA1_46.reset <= reset
    node _T_92 = bits(io.x, 46, 46) @[CRA.scala 20:17]
    FA1_46.io.x <= _T_92 @[CRA.scala 20:10]
    node _T_93 = bits(io.y, 46, 46) @[CRA.scala 21:17]
    FA1_46.io.y <= _T_93 @[CRA.scala 21:10]
    inst FA1_47 of FA1_47 @[CRA.scala 19:20]
    FA1_47.clock <= clock
    FA1_47.reset <= reset
    node _T_94 = bits(io.x, 47, 47) @[CRA.scala 20:17]
    FA1_47.io.x <= _T_94 @[CRA.scala 20:10]
    node _T_95 = bits(io.y, 47, 47) @[CRA.scala 21:17]
    FA1_47.io.y <= _T_95 @[CRA.scala 21:10]
    inst FA1_48 of FA1_48 @[CRA.scala 19:20]
    FA1_48.clock <= clock
    FA1_48.reset <= reset
    node _T_96 = bits(io.x, 48, 48) @[CRA.scala 20:17]
    FA1_48.io.x <= _T_96 @[CRA.scala 20:10]
    node _T_97 = bits(io.y, 48, 48) @[CRA.scala 21:17]
    FA1_48.io.y <= _T_97 @[CRA.scala 21:10]
    inst FA1_49 of FA1_49 @[CRA.scala 19:20]
    FA1_49.clock <= clock
    FA1_49.reset <= reset
    node _T_98 = bits(io.x, 49, 49) @[CRA.scala 20:17]
    FA1_49.io.x <= _T_98 @[CRA.scala 20:10]
    node _T_99 = bits(io.y, 49, 49) @[CRA.scala 21:17]
    FA1_49.io.y <= _T_99 @[CRA.scala 21:10]
    inst FA1_50 of FA1_50 @[CRA.scala 19:20]
    FA1_50.clock <= clock
    FA1_50.reset <= reset
    node _T_100 = bits(io.x, 50, 50) @[CRA.scala 20:17]
    FA1_50.io.x <= _T_100 @[CRA.scala 20:10]
    node _T_101 = bits(io.y, 50, 50) @[CRA.scala 21:17]
    FA1_50.io.y <= _T_101 @[CRA.scala 21:10]
    inst FA1_51 of FA1_51 @[CRA.scala 19:20]
    FA1_51.clock <= clock
    FA1_51.reset <= reset
    node _T_102 = bits(io.x, 51, 51) @[CRA.scala 20:17]
    FA1_51.io.x <= _T_102 @[CRA.scala 20:10]
    node _T_103 = bits(io.y, 51, 51) @[CRA.scala 21:17]
    FA1_51.io.y <= _T_103 @[CRA.scala 21:10]
    inst FA1_52 of FA1_52 @[CRA.scala 19:20]
    FA1_52.clock <= clock
    FA1_52.reset <= reset
    node _T_104 = bits(io.x, 52, 52) @[CRA.scala 20:17]
    FA1_52.io.x <= _T_104 @[CRA.scala 20:10]
    node _T_105 = bits(io.y, 52, 52) @[CRA.scala 21:17]
    FA1_52.io.y <= _T_105 @[CRA.scala 21:10]
    inst FA1_53 of FA1_53 @[CRA.scala 19:20]
    FA1_53.clock <= clock
    FA1_53.reset <= reset
    node _T_106 = bits(io.x, 53, 53) @[CRA.scala 20:17]
    FA1_53.io.x <= _T_106 @[CRA.scala 20:10]
    node _T_107 = bits(io.y, 53, 53) @[CRA.scala 21:17]
    FA1_53.io.y <= _T_107 @[CRA.scala 21:10]
    inst FA1_54 of FA1_54 @[CRA.scala 19:20]
    FA1_54.clock <= clock
    FA1_54.reset <= reset
    node _T_108 = bits(io.x, 54, 54) @[CRA.scala 20:17]
    FA1_54.io.x <= _T_108 @[CRA.scala 20:10]
    node _T_109 = bits(io.y, 54, 54) @[CRA.scala 21:17]
    FA1_54.io.y <= _T_109 @[CRA.scala 21:10]
    inst FA1_55 of FA1_55 @[CRA.scala 19:20]
    FA1_55.clock <= clock
    FA1_55.reset <= reset
    node _T_110 = bits(io.x, 55, 55) @[CRA.scala 20:17]
    FA1_55.io.x <= _T_110 @[CRA.scala 20:10]
    node _T_111 = bits(io.y, 55, 55) @[CRA.scala 21:17]
    FA1_55.io.y <= _T_111 @[CRA.scala 21:10]
    inst FA1_56 of FA1_56 @[CRA.scala 19:20]
    FA1_56.clock <= clock
    FA1_56.reset <= reset
    node _T_112 = bits(io.x, 56, 56) @[CRA.scala 20:17]
    FA1_56.io.x <= _T_112 @[CRA.scala 20:10]
    node _T_113 = bits(io.y, 56, 56) @[CRA.scala 21:17]
    FA1_56.io.y <= _T_113 @[CRA.scala 21:10]
    inst FA1_57 of FA1_57 @[CRA.scala 19:20]
    FA1_57.clock <= clock
    FA1_57.reset <= reset
    node _T_114 = bits(io.x, 57, 57) @[CRA.scala 20:17]
    FA1_57.io.x <= _T_114 @[CRA.scala 20:10]
    node _T_115 = bits(io.y, 57, 57) @[CRA.scala 21:17]
    FA1_57.io.y <= _T_115 @[CRA.scala 21:10]
    inst FA1_58 of FA1_58 @[CRA.scala 19:20]
    FA1_58.clock <= clock
    FA1_58.reset <= reset
    node _T_116 = bits(io.x, 58, 58) @[CRA.scala 20:17]
    FA1_58.io.x <= _T_116 @[CRA.scala 20:10]
    node _T_117 = bits(io.y, 58, 58) @[CRA.scala 21:17]
    FA1_58.io.y <= _T_117 @[CRA.scala 21:10]
    inst FA1_59 of FA1_59 @[CRA.scala 19:20]
    FA1_59.clock <= clock
    FA1_59.reset <= reset
    node _T_118 = bits(io.x, 59, 59) @[CRA.scala 20:17]
    FA1_59.io.x <= _T_118 @[CRA.scala 20:10]
    node _T_119 = bits(io.y, 59, 59) @[CRA.scala 21:17]
    FA1_59.io.y <= _T_119 @[CRA.scala 21:10]
    inst FA1_60 of FA1_60 @[CRA.scala 19:20]
    FA1_60.clock <= clock
    FA1_60.reset <= reset
    node _T_120 = bits(io.x, 60, 60) @[CRA.scala 20:17]
    FA1_60.io.x <= _T_120 @[CRA.scala 20:10]
    node _T_121 = bits(io.y, 60, 60) @[CRA.scala 21:17]
    FA1_60.io.y <= _T_121 @[CRA.scala 21:10]
    inst FA1_61 of FA1_61 @[CRA.scala 19:20]
    FA1_61.clock <= clock
    FA1_61.reset <= reset
    node _T_122 = bits(io.x, 61, 61) @[CRA.scala 20:17]
    FA1_61.io.x <= _T_122 @[CRA.scala 20:10]
    node _T_123 = bits(io.y, 61, 61) @[CRA.scala 21:17]
    FA1_61.io.y <= _T_123 @[CRA.scala 21:10]
    inst FA1_62 of FA1_62 @[CRA.scala 19:20]
    FA1_62.clock <= clock
    FA1_62.reset <= reset
    node _T_124 = bits(io.x, 62, 62) @[CRA.scala 20:17]
    FA1_62.io.x <= _T_124 @[CRA.scala 20:10]
    node _T_125 = bits(io.y, 62, 62) @[CRA.scala 21:17]
    FA1_62.io.y <= _T_125 @[CRA.scala 21:10]
    inst FA1_63 of FA1_63 @[CRA.scala 19:20]
    FA1_63.clock <= clock
    FA1_63.reset <= reset
    node _T_126 = bits(io.x, 63, 63) @[CRA.scala 20:17]
    FA1_63.io.x <= _T_126 @[CRA.scala 20:10]
    node _T_127 = bits(io.y, 63, 63) @[CRA.scala 21:17]
    FA1_63.io.y <= _T_127 @[CRA.scala 21:10]
    FA1_1.io.cin <= FA1.io.cout @[CRA.scala 27:27]
    FA1_2.io.cin <= FA1_1.io.cout @[CRA.scala 27:27]
    FA1_3.io.cin <= FA1_2.io.cout @[CRA.scala 27:27]
    FA1_4.io.cin <= FA1_3.io.cout @[CRA.scala 27:27]
    FA1_5.io.cin <= FA1_4.io.cout @[CRA.scala 27:27]
    FA1_6.io.cin <= FA1_5.io.cout @[CRA.scala 27:27]
    FA1_7.io.cin <= FA1_6.io.cout @[CRA.scala 27:27]
    FA1_8.io.cin <= FA1_7.io.cout @[CRA.scala 27:27]
    FA1_9.io.cin <= FA1_8.io.cout @[CRA.scala 27:27]
    FA1_10.io.cin <= FA1_9.io.cout @[CRA.scala 27:27]
    FA1_11.io.cin <= FA1_10.io.cout @[CRA.scala 27:27]
    FA1_12.io.cin <= FA1_11.io.cout @[CRA.scala 27:27]
    FA1_13.io.cin <= FA1_12.io.cout @[CRA.scala 27:27]
    FA1_14.io.cin <= FA1_13.io.cout @[CRA.scala 27:27]
    FA1_15.io.cin <= FA1_14.io.cout @[CRA.scala 27:27]
    FA1_16.io.cin <= FA1_15.io.cout @[CRA.scala 27:27]
    FA1_17.io.cin <= FA1_16.io.cout @[CRA.scala 27:27]
    FA1_18.io.cin <= FA1_17.io.cout @[CRA.scala 27:27]
    FA1_19.io.cin <= FA1_18.io.cout @[CRA.scala 27:27]
    FA1_20.io.cin <= FA1_19.io.cout @[CRA.scala 27:27]
    FA1_21.io.cin <= FA1_20.io.cout @[CRA.scala 27:27]
    FA1_22.io.cin <= FA1_21.io.cout @[CRA.scala 27:27]
    FA1_23.io.cin <= FA1_22.io.cout @[CRA.scala 27:27]
    FA1_24.io.cin <= FA1_23.io.cout @[CRA.scala 27:27]
    FA1_25.io.cin <= FA1_24.io.cout @[CRA.scala 27:27]
    FA1_26.io.cin <= FA1_25.io.cout @[CRA.scala 27:27]
    FA1_27.io.cin <= FA1_26.io.cout @[CRA.scala 27:27]
    FA1_28.io.cin <= FA1_27.io.cout @[CRA.scala 27:27]
    FA1_29.io.cin <= FA1_28.io.cout @[CRA.scala 27:27]
    FA1_30.io.cin <= FA1_29.io.cout @[CRA.scala 27:27]
    FA1_31.io.cin <= FA1_30.io.cout @[CRA.scala 27:27]
    FA1_32.io.cin <= FA1_31.io.cout @[CRA.scala 27:27]
    FA1_33.io.cin <= FA1_32.io.cout @[CRA.scala 27:27]
    FA1_34.io.cin <= FA1_33.io.cout @[CRA.scala 27:27]
    FA1_35.io.cin <= FA1_34.io.cout @[CRA.scala 27:27]
    FA1_36.io.cin <= FA1_35.io.cout @[CRA.scala 27:27]
    FA1_37.io.cin <= FA1_36.io.cout @[CRA.scala 27:27]
    FA1_38.io.cin <= FA1_37.io.cout @[CRA.scala 27:27]
    FA1_39.io.cin <= FA1_38.io.cout @[CRA.scala 27:27]
    FA1_40.io.cin <= FA1_39.io.cout @[CRA.scala 27:27]
    FA1_41.io.cin <= FA1_40.io.cout @[CRA.scala 27:27]
    FA1_42.io.cin <= FA1_41.io.cout @[CRA.scala 27:27]
    FA1_43.io.cin <= FA1_42.io.cout @[CRA.scala 27:27]
    FA1_44.io.cin <= FA1_43.io.cout @[CRA.scala 27:27]
    FA1_45.io.cin <= FA1_44.io.cout @[CRA.scala 27:27]
    FA1_46.io.cin <= FA1_45.io.cout @[CRA.scala 27:27]
    FA1_47.io.cin <= FA1_46.io.cout @[CRA.scala 27:27]
    FA1_48.io.cin <= FA1_47.io.cout @[CRA.scala 27:27]
    FA1_49.io.cin <= FA1_48.io.cout @[CRA.scala 27:27]
    FA1_50.io.cin <= FA1_49.io.cout @[CRA.scala 27:27]
    FA1_51.io.cin <= FA1_50.io.cout @[CRA.scala 27:27]
    FA1_52.io.cin <= FA1_51.io.cout @[CRA.scala 27:27]
    FA1_53.io.cin <= FA1_52.io.cout @[CRA.scala 27:27]
    FA1_54.io.cin <= FA1_53.io.cout @[CRA.scala 27:27]
    FA1_55.io.cin <= FA1_54.io.cout @[CRA.scala 27:27]
    FA1_56.io.cin <= FA1_55.io.cout @[CRA.scala 27:27]
    FA1_57.io.cin <= FA1_56.io.cout @[CRA.scala 27:27]
    FA1_58.io.cin <= FA1_57.io.cout @[CRA.scala 27:27]
    FA1_59.io.cin <= FA1_58.io.cout @[CRA.scala 27:27]
    FA1_60.io.cin <= FA1_59.io.cout @[CRA.scala 27:27]
    FA1_61.io.cin <= FA1_60.io.cout @[CRA.scala 27:27]
    FA1_62.io.cin <= FA1_61.io.cout @[CRA.scala 27:27]
    FA1_63.io.cin <= FA1_62.io.cout @[CRA.scala 27:27]
    FA1.io.cin <= io.cin @[CRA.scala 31:21]
    io.cout <= FA1_63.io.cout @[CRA.scala 32:11]
    wire vec_s : UInt<1>[64] @[CRA.scala 35:34]
    vec_s[0] <= FA1.io.s @[CRA.scala 35:34]
    vec_s[1] <= FA1_1.io.s @[CRA.scala 35:34]
    vec_s[2] <= FA1_2.io.s @[CRA.scala 35:34]
    vec_s[3] <= FA1_3.io.s @[CRA.scala 35:34]
    vec_s[4] <= FA1_4.io.s @[CRA.scala 35:34]
    vec_s[5] <= FA1_5.io.s @[CRA.scala 35:34]
    vec_s[6] <= FA1_6.io.s @[CRA.scala 35:34]
    vec_s[7] <= FA1_7.io.s @[CRA.scala 35:34]
    vec_s[8] <= FA1_8.io.s @[CRA.scala 35:34]
    vec_s[9] <= FA1_9.io.s @[CRA.scala 35:34]
    vec_s[10] <= FA1_10.io.s @[CRA.scala 35:34]
    vec_s[11] <= FA1_11.io.s @[CRA.scala 35:34]
    vec_s[12] <= FA1_12.io.s @[CRA.scala 35:34]
    vec_s[13] <= FA1_13.io.s @[CRA.scala 35:34]
    vec_s[14] <= FA1_14.io.s @[CRA.scala 35:34]
    vec_s[15] <= FA1_15.io.s @[CRA.scala 35:34]
    vec_s[16] <= FA1_16.io.s @[CRA.scala 35:34]
    vec_s[17] <= FA1_17.io.s @[CRA.scala 35:34]
    vec_s[18] <= FA1_18.io.s @[CRA.scala 35:34]
    vec_s[19] <= FA1_19.io.s @[CRA.scala 35:34]
    vec_s[20] <= FA1_20.io.s @[CRA.scala 35:34]
    vec_s[21] <= FA1_21.io.s @[CRA.scala 35:34]
    vec_s[22] <= FA1_22.io.s @[CRA.scala 35:34]
    vec_s[23] <= FA1_23.io.s @[CRA.scala 35:34]
    vec_s[24] <= FA1_24.io.s @[CRA.scala 35:34]
    vec_s[25] <= FA1_25.io.s @[CRA.scala 35:34]
    vec_s[26] <= FA1_26.io.s @[CRA.scala 35:34]
    vec_s[27] <= FA1_27.io.s @[CRA.scala 35:34]
    vec_s[28] <= FA1_28.io.s @[CRA.scala 35:34]
    vec_s[29] <= FA1_29.io.s @[CRA.scala 35:34]
    vec_s[30] <= FA1_30.io.s @[CRA.scala 35:34]
    vec_s[31] <= FA1_31.io.s @[CRA.scala 35:34]
    vec_s[32] <= FA1_32.io.s @[CRA.scala 35:34]
    vec_s[33] <= FA1_33.io.s @[CRA.scala 35:34]
    vec_s[34] <= FA1_34.io.s @[CRA.scala 35:34]
    vec_s[35] <= FA1_35.io.s @[CRA.scala 35:34]
    vec_s[36] <= FA1_36.io.s @[CRA.scala 35:34]
    vec_s[37] <= FA1_37.io.s @[CRA.scala 35:34]
    vec_s[38] <= FA1_38.io.s @[CRA.scala 35:34]
    vec_s[39] <= FA1_39.io.s @[CRA.scala 35:34]
    vec_s[40] <= FA1_40.io.s @[CRA.scala 35:34]
    vec_s[41] <= FA1_41.io.s @[CRA.scala 35:34]
    vec_s[42] <= FA1_42.io.s @[CRA.scala 35:34]
    vec_s[43] <= FA1_43.io.s @[CRA.scala 35:34]
    vec_s[44] <= FA1_44.io.s @[CRA.scala 35:34]
    vec_s[45] <= FA1_45.io.s @[CRA.scala 35:34]
    vec_s[46] <= FA1_46.io.s @[CRA.scala 35:34]
    vec_s[47] <= FA1_47.io.s @[CRA.scala 35:34]
    vec_s[48] <= FA1_48.io.s @[CRA.scala 35:34]
    vec_s[49] <= FA1_49.io.s @[CRA.scala 35:34]
    vec_s[50] <= FA1_50.io.s @[CRA.scala 35:34]
    vec_s[51] <= FA1_51.io.s @[CRA.scala 35:34]
    vec_s[52] <= FA1_52.io.s @[CRA.scala 35:34]
    vec_s[53] <= FA1_53.io.s @[CRA.scala 35:34]
    vec_s[54] <= FA1_54.io.s @[CRA.scala 35:34]
    vec_s[55] <= FA1_55.io.s @[CRA.scala 35:34]
    vec_s[56] <= FA1_56.io.s @[CRA.scala 35:34]
    vec_s[57] <= FA1_57.io.s @[CRA.scala 35:34]
    vec_s[58] <= FA1_58.io.s @[CRA.scala 35:34]
    vec_s[59] <= FA1_59.io.s @[CRA.scala 35:34]
    vec_s[60] <= FA1_60.io.s @[CRA.scala 35:34]
    vec_s[61] <= FA1_61.io.s @[CRA.scala 35:34]
    vec_s[62] <= FA1_62.io.s @[CRA.scala 35:34]
    vec_s[63] <= FA1_63.io.s @[CRA.scala 35:34]
    node _T_128 = cat(vec_s[1], vec_s[0]) @[CRA.scala 36:23]
    node _T_129 = cat(vec_s[3], vec_s[2]) @[CRA.scala 36:23]
    node _T_130 = cat(_T_129, _T_128) @[CRA.scala 36:23]
    node _T_131 = cat(vec_s[5], vec_s[4]) @[CRA.scala 36:23]
    node _T_132 = cat(vec_s[7], vec_s[6]) @[CRA.scala 36:23]
    node _T_133 = cat(_T_132, _T_131) @[CRA.scala 36:23]
    node _T_134 = cat(_T_133, _T_130) @[CRA.scala 36:23]
    node _T_135 = cat(vec_s[9], vec_s[8]) @[CRA.scala 36:23]
    node _T_136 = cat(vec_s[11], vec_s[10]) @[CRA.scala 36:23]
    node _T_137 = cat(_T_136, _T_135) @[CRA.scala 36:23]
    node _T_138 = cat(vec_s[13], vec_s[12]) @[CRA.scala 36:23]
    node _T_139 = cat(vec_s[15], vec_s[14]) @[CRA.scala 36:23]
    node _T_140 = cat(_T_139, _T_138) @[CRA.scala 36:23]
    node _T_141 = cat(_T_140, _T_137) @[CRA.scala 36:23]
    node _T_142 = cat(_T_141, _T_134) @[CRA.scala 36:23]
    node _T_143 = cat(vec_s[17], vec_s[16]) @[CRA.scala 36:23]
    node _T_144 = cat(vec_s[19], vec_s[18]) @[CRA.scala 36:23]
    node _T_145 = cat(_T_144, _T_143) @[CRA.scala 36:23]
    node _T_146 = cat(vec_s[21], vec_s[20]) @[CRA.scala 36:23]
    node _T_147 = cat(vec_s[23], vec_s[22]) @[CRA.scala 36:23]
    node _T_148 = cat(_T_147, _T_146) @[CRA.scala 36:23]
    node _T_149 = cat(_T_148, _T_145) @[CRA.scala 36:23]
    node _T_150 = cat(vec_s[25], vec_s[24]) @[CRA.scala 36:23]
    node _T_151 = cat(vec_s[27], vec_s[26]) @[CRA.scala 36:23]
    node _T_152 = cat(_T_151, _T_150) @[CRA.scala 36:23]
    node _T_153 = cat(vec_s[29], vec_s[28]) @[CRA.scala 36:23]
    node _T_154 = cat(vec_s[31], vec_s[30]) @[CRA.scala 36:23]
    node _T_155 = cat(_T_154, _T_153) @[CRA.scala 36:23]
    node _T_156 = cat(_T_155, _T_152) @[CRA.scala 36:23]
    node _T_157 = cat(_T_156, _T_149) @[CRA.scala 36:23]
    node _T_158 = cat(_T_157, _T_142) @[CRA.scala 36:23]
    node _T_159 = cat(vec_s[33], vec_s[32]) @[CRA.scala 36:23]
    node _T_160 = cat(vec_s[35], vec_s[34]) @[CRA.scala 36:23]
    node _T_161 = cat(_T_160, _T_159) @[CRA.scala 36:23]
    node _T_162 = cat(vec_s[37], vec_s[36]) @[CRA.scala 36:23]
    node _T_163 = cat(vec_s[39], vec_s[38]) @[CRA.scala 36:23]
    node _T_164 = cat(_T_163, _T_162) @[CRA.scala 36:23]
    node _T_165 = cat(_T_164, _T_161) @[CRA.scala 36:23]
    node _T_166 = cat(vec_s[41], vec_s[40]) @[CRA.scala 36:23]
    node _T_167 = cat(vec_s[43], vec_s[42]) @[CRA.scala 36:23]
    node _T_168 = cat(_T_167, _T_166) @[CRA.scala 36:23]
    node _T_169 = cat(vec_s[45], vec_s[44]) @[CRA.scala 36:23]
    node _T_170 = cat(vec_s[47], vec_s[46]) @[CRA.scala 36:23]
    node _T_171 = cat(_T_170, _T_169) @[CRA.scala 36:23]
    node _T_172 = cat(_T_171, _T_168) @[CRA.scala 36:23]
    node _T_173 = cat(_T_172, _T_165) @[CRA.scala 36:23]
    node _T_174 = cat(vec_s[49], vec_s[48]) @[CRA.scala 36:23]
    node _T_175 = cat(vec_s[51], vec_s[50]) @[CRA.scala 36:23]
    node _T_176 = cat(_T_175, _T_174) @[CRA.scala 36:23]
    node _T_177 = cat(vec_s[53], vec_s[52]) @[CRA.scala 36:23]
    node _T_178 = cat(vec_s[55], vec_s[54]) @[CRA.scala 36:23]
    node _T_179 = cat(_T_178, _T_177) @[CRA.scala 36:23]
    node _T_180 = cat(_T_179, _T_176) @[CRA.scala 36:23]
    node _T_181 = cat(vec_s[57], vec_s[56]) @[CRA.scala 36:23]
    node _T_182 = cat(vec_s[59], vec_s[58]) @[CRA.scala 36:23]
    node _T_183 = cat(_T_182, _T_181) @[CRA.scala 36:23]
    node _T_184 = cat(vec_s[61], vec_s[60]) @[CRA.scala 36:23]
    node _T_185 = cat(vec_s[63], vec_s[62]) @[CRA.scala 36:23]
    node _T_186 = cat(_T_185, _T_184) @[CRA.scala 36:23]
    node _T_187 = cat(_T_186, _T_183) @[CRA.scala 36:23]
    node _T_188 = cat(_T_187, _T_180) @[CRA.scala 36:23]
    node _T_189 = cat(_T_188, _T_173) @[CRA.scala 36:23]
    node _T_190 = cat(_T_189, _T_158) @[CRA.scala 36:23]
    io.s <= _T_190 @[CRA.scala 36:8]
    
