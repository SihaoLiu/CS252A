;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit CSK : 
  module FA1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_25 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_26 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_27 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_28 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_29 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_30 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_31 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module CRA : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<32>, flip y : UInt<32>, flip cin : UInt<1>, s : UInt<32>, cout : UInt<1>, g : UInt<32>, p : UInt<32>}
    
    inst FA1 of FA1 @[CRA.scala 22:20]
    FA1.clock <= clock
    FA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CRA.scala 23:17]
    FA1.io.x <= _T @[CRA.scala 23:10]
    node _T_1 = bits(io.y, 0, 0) @[CRA.scala 24:17]
    FA1.io.y <= _T_1 @[CRA.scala 24:10]
    inst FA1_1 of FA1_1 @[CRA.scala 22:20]
    FA1_1.clock <= clock
    FA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CRA.scala 23:17]
    FA1_1.io.x <= _T_2 @[CRA.scala 23:10]
    node _T_3 = bits(io.y, 1, 1) @[CRA.scala 24:17]
    FA1_1.io.y <= _T_3 @[CRA.scala 24:10]
    inst FA1_2 of FA1_2 @[CRA.scala 22:20]
    FA1_2.clock <= clock
    FA1_2.reset <= reset
    node _T_4 = bits(io.x, 2, 2) @[CRA.scala 23:17]
    FA1_2.io.x <= _T_4 @[CRA.scala 23:10]
    node _T_5 = bits(io.y, 2, 2) @[CRA.scala 24:17]
    FA1_2.io.y <= _T_5 @[CRA.scala 24:10]
    inst FA1_3 of FA1_3 @[CRA.scala 22:20]
    FA1_3.clock <= clock
    FA1_3.reset <= reset
    node _T_6 = bits(io.x, 3, 3) @[CRA.scala 23:17]
    FA1_3.io.x <= _T_6 @[CRA.scala 23:10]
    node _T_7 = bits(io.y, 3, 3) @[CRA.scala 24:17]
    FA1_3.io.y <= _T_7 @[CRA.scala 24:10]
    inst FA1_4 of FA1_4 @[CRA.scala 22:20]
    FA1_4.clock <= clock
    FA1_4.reset <= reset
    node _T_8 = bits(io.x, 4, 4) @[CRA.scala 23:17]
    FA1_4.io.x <= _T_8 @[CRA.scala 23:10]
    node _T_9 = bits(io.y, 4, 4) @[CRA.scala 24:17]
    FA1_4.io.y <= _T_9 @[CRA.scala 24:10]
    inst FA1_5 of FA1_5 @[CRA.scala 22:20]
    FA1_5.clock <= clock
    FA1_5.reset <= reset
    node _T_10 = bits(io.x, 5, 5) @[CRA.scala 23:17]
    FA1_5.io.x <= _T_10 @[CRA.scala 23:10]
    node _T_11 = bits(io.y, 5, 5) @[CRA.scala 24:17]
    FA1_5.io.y <= _T_11 @[CRA.scala 24:10]
    inst FA1_6 of FA1_6 @[CRA.scala 22:20]
    FA1_6.clock <= clock
    FA1_6.reset <= reset
    node _T_12 = bits(io.x, 6, 6) @[CRA.scala 23:17]
    FA1_6.io.x <= _T_12 @[CRA.scala 23:10]
    node _T_13 = bits(io.y, 6, 6) @[CRA.scala 24:17]
    FA1_6.io.y <= _T_13 @[CRA.scala 24:10]
    inst FA1_7 of FA1_7 @[CRA.scala 22:20]
    FA1_7.clock <= clock
    FA1_7.reset <= reset
    node _T_14 = bits(io.x, 7, 7) @[CRA.scala 23:17]
    FA1_7.io.x <= _T_14 @[CRA.scala 23:10]
    node _T_15 = bits(io.y, 7, 7) @[CRA.scala 24:17]
    FA1_7.io.y <= _T_15 @[CRA.scala 24:10]
    inst FA1_8 of FA1_8 @[CRA.scala 22:20]
    FA1_8.clock <= clock
    FA1_8.reset <= reset
    node _T_16 = bits(io.x, 8, 8) @[CRA.scala 23:17]
    FA1_8.io.x <= _T_16 @[CRA.scala 23:10]
    node _T_17 = bits(io.y, 8, 8) @[CRA.scala 24:17]
    FA1_8.io.y <= _T_17 @[CRA.scala 24:10]
    inst FA1_9 of FA1_9 @[CRA.scala 22:20]
    FA1_9.clock <= clock
    FA1_9.reset <= reset
    node _T_18 = bits(io.x, 9, 9) @[CRA.scala 23:17]
    FA1_9.io.x <= _T_18 @[CRA.scala 23:10]
    node _T_19 = bits(io.y, 9, 9) @[CRA.scala 24:17]
    FA1_9.io.y <= _T_19 @[CRA.scala 24:10]
    inst FA1_10 of FA1_10 @[CRA.scala 22:20]
    FA1_10.clock <= clock
    FA1_10.reset <= reset
    node _T_20 = bits(io.x, 10, 10) @[CRA.scala 23:17]
    FA1_10.io.x <= _T_20 @[CRA.scala 23:10]
    node _T_21 = bits(io.y, 10, 10) @[CRA.scala 24:17]
    FA1_10.io.y <= _T_21 @[CRA.scala 24:10]
    inst FA1_11 of FA1_11 @[CRA.scala 22:20]
    FA1_11.clock <= clock
    FA1_11.reset <= reset
    node _T_22 = bits(io.x, 11, 11) @[CRA.scala 23:17]
    FA1_11.io.x <= _T_22 @[CRA.scala 23:10]
    node _T_23 = bits(io.y, 11, 11) @[CRA.scala 24:17]
    FA1_11.io.y <= _T_23 @[CRA.scala 24:10]
    inst FA1_12 of FA1_12 @[CRA.scala 22:20]
    FA1_12.clock <= clock
    FA1_12.reset <= reset
    node _T_24 = bits(io.x, 12, 12) @[CRA.scala 23:17]
    FA1_12.io.x <= _T_24 @[CRA.scala 23:10]
    node _T_25 = bits(io.y, 12, 12) @[CRA.scala 24:17]
    FA1_12.io.y <= _T_25 @[CRA.scala 24:10]
    inst FA1_13 of FA1_13 @[CRA.scala 22:20]
    FA1_13.clock <= clock
    FA1_13.reset <= reset
    node _T_26 = bits(io.x, 13, 13) @[CRA.scala 23:17]
    FA1_13.io.x <= _T_26 @[CRA.scala 23:10]
    node _T_27 = bits(io.y, 13, 13) @[CRA.scala 24:17]
    FA1_13.io.y <= _T_27 @[CRA.scala 24:10]
    inst FA1_14 of FA1_14 @[CRA.scala 22:20]
    FA1_14.clock <= clock
    FA1_14.reset <= reset
    node _T_28 = bits(io.x, 14, 14) @[CRA.scala 23:17]
    FA1_14.io.x <= _T_28 @[CRA.scala 23:10]
    node _T_29 = bits(io.y, 14, 14) @[CRA.scala 24:17]
    FA1_14.io.y <= _T_29 @[CRA.scala 24:10]
    inst FA1_15 of FA1_15 @[CRA.scala 22:20]
    FA1_15.clock <= clock
    FA1_15.reset <= reset
    node _T_30 = bits(io.x, 15, 15) @[CRA.scala 23:17]
    FA1_15.io.x <= _T_30 @[CRA.scala 23:10]
    node _T_31 = bits(io.y, 15, 15) @[CRA.scala 24:17]
    FA1_15.io.y <= _T_31 @[CRA.scala 24:10]
    inst FA1_16 of FA1_16 @[CRA.scala 22:20]
    FA1_16.clock <= clock
    FA1_16.reset <= reset
    node _T_32 = bits(io.x, 16, 16) @[CRA.scala 23:17]
    FA1_16.io.x <= _T_32 @[CRA.scala 23:10]
    node _T_33 = bits(io.y, 16, 16) @[CRA.scala 24:17]
    FA1_16.io.y <= _T_33 @[CRA.scala 24:10]
    inst FA1_17 of FA1_17 @[CRA.scala 22:20]
    FA1_17.clock <= clock
    FA1_17.reset <= reset
    node _T_34 = bits(io.x, 17, 17) @[CRA.scala 23:17]
    FA1_17.io.x <= _T_34 @[CRA.scala 23:10]
    node _T_35 = bits(io.y, 17, 17) @[CRA.scala 24:17]
    FA1_17.io.y <= _T_35 @[CRA.scala 24:10]
    inst FA1_18 of FA1_18 @[CRA.scala 22:20]
    FA1_18.clock <= clock
    FA1_18.reset <= reset
    node _T_36 = bits(io.x, 18, 18) @[CRA.scala 23:17]
    FA1_18.io.x <= _T_36 @[CRA.scala 23:10]
    node _T_37 = bits(io.y, 18, 18) @[CRA.scala 24:17]
    FA1_18.io.y <= _T_37 @[CRA.scala 24:10]
    inst FA1_19 of FA1_19 @[CRA.scala 22:20]
    FA1_19.clock <= clock
    FA1_19.reset <= reset
    node _T_38 = bits(io.x, 19, 19) @[CRA.scala 23:17]
    FA1_19.io.x <= _T_38 @[CRA.scala 23:10]
    node _T_39 = bits(io.y, 19, 19) @[CRA.scala 24:17]
    FA1_19.io.y <= _T_39 @[CRA.scala 24:10]
    inst FA1_20 of FA1_20 @[CRA.scala 22:20]
    FA1_20.clock <= clock
    FA1_20.reset <= reset
    node _T_40 = bits(io.x, 20, 20) @[CRA.scala 23:17]
    FA1_20.io.x <= _T_40 @[CRA.scala 23:10]
    node _T_41 = bits(io.y, 20, 20) @[CRA.scala 24:17]
    FA1_20.io.y <= _T_41 @[CRA.scala 24:10]
    inst FA1_21 of FA1_21 @[CRA.scala 22:20]
    FA1_21.clock <= clock
    FA1_21.reset <= reset
    node _T_42 = bits(io.x, 21, 21) @[CRA.scala 23:17]
    FA1_21.io.x <= _T_42 @[CRA.scala 23:10]
    node _T_43 = bits(io.y, 21, 21) @[CRA.scala 24:17]
    FA1_21.io.y <= _T_43 @[CRA.scala 24:10]
    inst FA1_22 of FA1_22 @[CRA.scala 22:20]
    FA1_22.clock <= clock
    FA1_22.reset <= reset
    node _T_44 = bits(io.x, 22, 22) @[CRA.scala 23:17]
    FA1_22.io.x <= _T_44 @[CRA.scala 23:10]
    node _T_45 = bits(io.y, 22, 22) @[CRA.scala 24:17]
    FA1_22.io.y <= _T_45 @[CRA.scala 24:10]
    inst FA1_23 of FA1_23 @[CRA.scala 22:20]
    FA1_23.clock <= clock
    FA1_23.reset <= reset
    node _T_46 = bits(io.x, 23, 23) @[CRA.scala 23:17]
    FA1_23.io.x <= _T_46 @[CRA.scala 23:10]
    node _T_47 = bits(io.y, 23, 23) @[CRA.scala 24:17]
    FA1_23.io.y <= _T_47 @[CRA.scala 24:10]
    inst FA1_24 of FA1_24 @[CRA.scala 22:20]
    FA1_24.clock <= clock
    FA1_24.reset <= reset
    node _T_48 = bits(io.x, 24, 24) @[CRA.scala 23:17]
    FA1_24.io.x <= _T_48 @[CRA.scala 23:10]
    node _T_49 = bits(io.y, 24, 24) @[CRA.scala 24:17]
    FA1_24.io.y <= _T_49 @[CRA.scala 24:10]
    inst FA1_25 of FA1_25 @[CRA.scala 22:20]
    FA1_25.clock <= clock
    FA1_25.reset <= reset
    node _T_50 = bits(io.x, 25, 25) @[CRA.scala 23:17]
    FA1_25.io.x <= _T_50 @[CRA.scala 23:10]
    node _T_51 = bits(io.y, 25, 25) @[CRA.scala 24:17]
    FA1_25.io.y <= _T_51 @[CRA.scala 24:10]
    inst FA1_26 of FA1_26 @[CRA.scala 22:20]
    FA1_26.clock <= clock
    FA1_26.reset <= reset
    node _T_52 = bits(io.x, 26, 26) @[CRA.scala 23:17]
    FA1_26.io.x <= _T_52 @[CRA.scala 23:10]
    node _T_53 = bits(io.y, 26, 26) @[CRA.scala 24:17]
    FA1_26.io.y <= _T_53 @[CRA.scala 24:10]
    inst FA1_27 of FA1_27 @[CRA.scala 22:20]
    FA1_27.clock <= clock
    FA1_27.reset <= reset
    node _T_54 = bits(io.x, 27, 27) @[CRA.scala 23:17]
    FA1_27.io.x <= _T_54 @[CRA.scala 23:10]
    node _T_55 = bits(io.y, 27, 27) @[CRA.scala 24:17]
    FA1_27.io.y <= _T_55 @[CRA.scala 24:10]
    inst FA1_28 of FA1_28 @[CRA.scala 22:20]
    FA1_28.clock <= clock
    FA1_28.reset <= reset
    node _T_56 = bits(io.x, 28, 28) @[CRA.scala 23:17]
    FA1_28.io.x <= _T_56 @[CRA.scala 23:10]
    node _T_57 = bits(io.y, 28, 28) @[CRA.scala 24:17]
    FA1_28.io.y <= _T_57 @[CRA.scala 24:10]
    inst FA1_29 of FA1_29 @[CRA.scala 22:20]
    FA1_29.clock <= clock
    FA1_29.reset <= reset
    node _T_58 = bits(io.x, 29, 29) @[CRA.scala 23:17]
    FA1_29.io.x <= _T_58 @[CRA.scala 23:10]
    node _T_59 = bits(io.y, 29, 29) @[CRA.scala 24:17]
    FA1_29.io.y <= _T_59 @[CRA.scala 24:10]
    inst FA1_30 of FA1_30 @[CRA.scala 22:20]
    FA1_30.clock <= clock
    FA1_30.reset <= reset
    node _T_60 = bits(io.x, 30, 30) @[CRA.scala 23:17]
    FA1_30.io.x <= _T_60 @[CRA.scala 23:10]
    node _T_61 = bits(io.y, 30, 30) @[CRA.scala 24:17]
    FA1_30.io.y <= _T_61 @[CRA.scala 24:10]
    inst FA1_31 of FA1_31 @[CRA.scala 22:20]
    FA1_31.clock <= clock
    FA1_31.reset <= reset
    node _T_62 = bits(io.x, 31, 31) @[CRA.scala 23:17]
    FA1_31.io.x <= _T_62 @[CRA.scala 23:10]
    node _T_63 = bits(io.y, 31, 31) @[CRA.scala 24:17]
    FA1_31.io.y <= _T_63 @[CRA.scala 24:10]
    FA1_1.io.cin <= FA1.io.cout @[CRA.scala 30:27]
    FA1_2.io.cin <= FA1_1.io.cout @[CRA.scala 30:27]
    FA1_3.io.cin <= FA1_2.io.cout @[CRA.scala 30:27]
    FA1_4.io.cin <= FA1_3.io.cout @[CRA.scala 30:27]
    FA1_5.io.cin <= FA1_4.io.cout @[CRA.scala 30:27]
    FA1_6.io.cin <= FA1_5.io.cout @[CRA.scala 30:27]
    FA1_7.io.cin <= FA1_6.io.cout @[CRA.scala 30:27]
    FA1_8.io.cin <= FA1_7.io.cout @[CRA.scala 30:27]
    FA1_9.io.cin <= FA1_8.io.cout @[CRA.scala 30:27]
    FA1_10.io.cin <= FA1_9.io.cout @[CRA.scala 30:27]
    FA1_11.io.cin <= FA1_10.io.cout @[CRA.scala 30:27]
    FA1_12.io.cin <= FA1_11.io.cout @[CRA.scala 30:27]
    FA1_13.io.cin <= FA1_12.io.cout @[CRA.scala 30:27]
    FA1_14.io.cin <= FA1_13.io.cout @[CRA.scala 30:27]
    FA1_15.io.cin <= FA1_14.io.cout @[CRA.scala 30:27]
    FA1_16.io.cin <= FA1_15.io.cout @[CRA.scala 30:27]
    FA1_17.io.cin <= FA1_16.io.cout @[CRA.scala 30:27]
    FA1_18.io.cin <= FA1_17.io.cout @[CRA.scala 30:27]
    FA1_19.io.cin <= FA1_18.io.cout @[CRA.scala 30:27]
    FA1_20.io.cin <= FA1_19.io.cout @[CRA.scala 30:27]
    FA1_21.io.cin <= FA1_20.io.cout @[CRA.scala 30:27]
    FA1_22.io.cin <= FA1_21.io.cout @[CRA.scala 30:27]
    FA1_23.io.cin <= FA1_22.io.cout @[CRA.scala 30:27]
    FA1_24.io.cin <= FA1_23.io.cout @[CRA.scala 30:27]
    FA1_25.io.cin <= FA1_24.io.cout @[CRA.scala 30:27]
    FA1_26.io.cin <= FA1_25.io.cout @[CRA.scala 30:27]
    FA1_27.io.cin <= FA1_26.io.cout @[CRA.scala 30:27]
    FA1_28.io.cin <= FA1_27.io.cout @[CRA.scala 30:27]
    FA1_29.io.cin <= FA1_28.io.cout @[CRA.scala 30:27]
    FA1_30.io.cin <= FA1_29.io.cout @[CRA.scala 30:27]
    FA1_31.io.cin <= FA1_30.io.cout @[CRA.scala 30:27]
    FA1.io.cin <= io.cin @[CRA.scala 34:21]
    io.cout <= FA1_31.io.cout @[CRA.scala 35:11]
    wire _T_64 : UInt<1>[32] @[CRA.scala 38:18]
    _T_64[0] <= FA1.io.s @[CRA.scala 38:18]
    _T_64[1] <= FA1_1.io.s @[CRA.scala 38:18]
    _T_64[2] <= FA1_2.io.s @[CRA.scala 38:18]
    _T_64[3] <= FA1_3.io.s @[CRA.scala 38:18]
    _T_64[4] <= FA1_4.io.s @[CRA.scala 38:18]
    _T_64[5] <= FA1_5.io.s @[CRA.scala 38:18]
    _T_64[6] <= FA1_6.io.s @[CRA.scala 38:18]
    _T_64[7] <= FA1_7.io.s @[CRA.scala 38:18]
    _T_64[8] <= FA1_8.io.s @[CRA.scala 38:18]
    _T_64[9] <= FA1_9.io.s @[CRA.scala 38:18]
    _T_64[10] <= FA1_10.io.s @[CRA.scala 38:18]
    _T_64[11] <= FA1_11.io.s @[CRA.scala 38:18]
    _T_64[12] <= FA1_12.io.s @[CRA.scala 38:18]
    _T_64[13] <= FA1_13.io.s @[CRA.scala 38:18]
    _T_64[14] <= FA1_14.io.s @[CRA.scala 38:18]
    _T_64[15] <= FA1_15.io.s @[CRA.scala 38:18]
    _T_64[16] <= FA1_16.io.s @[CRA.scala 38:18]
    _T_64[17] <= FA1_17.io.s @[CRA.scala 38:18]
    _T_64[18] <= FA1_18.io.s @[CRA.scala 38:18]
    _T_64[19] <= FA1_19.io.s @[CRA.scala 38:18]
    _T_64[20] <= FA1_20.io.s @[CRA.scala 38:18]
    _T_64[21] <= FA1_21.io.s @[CRA.scala 38:18]
    _T_64[22] <= FA1_22.io.s @[CRA.scala 38:18]
    _T_64[23] <= FA1_23.io.s @[CRA.scala 38:18]
    _T_64[24] <= FA1_24.io.s @[CRA.scala 38:18]
    _T_64[25] <= FA1_25.io.s @[CRA.scala 38:18]
    _T_64[26] <= FA1_26.io.s @[CRA.scala 38:18]
    _T_64[27] <= FA1_27.io.s @[CRA.scala 38:18]
    _T_64[28] <= FA1_28.io.s @[CRA.scala 38:18]
    _T_64[29] <= FA1_29.io.s @[CRA.scala 38:18]
    _T_64[30] <= FA1_30.io.s @[CRA.scala 38:18]
    _T_64[31] <= FA1_31.io.s @[CRA.scala 38:18]
    node _T_65 = cat(_T_64[1], _T_64[0]) @[CRA.scala 38:44]
    node _T_66 = cat(_T_64[3], _T_64[2]) @[CRA.scala 38:44]
    node _T_67 = cat(_T_66, _T_65) @[CRA.scala 38:44]
    node _T_68 = cat(_T_64[5], _T_64[4]) @[CRA.scala 38:44]
    node _T_69 = cat(_T_64[7], _T_64[6]) @[CRA.scala 38:44]
    node _T_70 = cat(_T_69, _T_68) @[CRA.scala 38:44]
    node _T_71 = cat(_T_70, _T_67) @[CRA.scala 38:44]
    node _T_72 = cat(_T_64[9], _T_64[8]) @[CRA.scala 38:44]
    node _T_73 = cat(_T_64[11], _T_64[10]) @[CRA.scala 38:44]
    node _T_74 = cat(_T_73, _T_72) @[CRA.scala 38:44]
    node _T_75 = cat(_T_64[13], _T_64[12]) @[CRA.scala 38:44]
    node _T_76 = cat(_T_64[15], _T_64[14]) @[CRA.scala 38:44]
    node _T_77 = cat(_T_76, _T_75) @[CRA.scala 38:44]
    node _T_78 = cat(_T_77, _T_74) @[CRA.scala 38:44]
    node _T_79 = cat(_T_78, _T_71) @[CRA.scala 38:44]
    node _T_80 = cat(_T_64[17], _T_64[16]) @[CRA.scala 38:44]
    node _T_81 = cat(_T_64[19], _T_64[18]) @[CRA.scala 38:44]
    node _T_82 = cat(_T_81, _T_80) @[CRA.scala 38:44]
    node _T_83 = cat(_T_64[21], _T_64[20]) @[CRA.scala 38:44]
    node _T_84 = cat(_T_64[23], _T_64[22]) @[CRA.scala 38:44]
    node _T_85 = cat(_T_84, _T_83) @[CRA.scala 38:44]
    node _T_86 = cat(_T_85, _T_82) @[CRA.scala 38:44]
    node _T_87 = cat(_T_64[25], _T_64[24]) @[CRA.scala 38:44]
    node _T_88 = cat(_T_64[27], _T_64[26]) @[CRA.scala 38:44]
    node _T_89 = cat(_T_88, _T_87) @[CRA.scala 38:44]
    node _T_90 = cat(_T_64[29], _T_64[28]) @[CRA.scala 38:44]
    node _T_91 = cat(_T_64[31], _T_64[30]) @[CRA.scala 38:44]
    node _T_92 = cat(_T_91, _T_90) @[CRA.scala 38:44]
    node _T_93 = cat(_T_92, _T_89) @[CRA.scala 38:44]
    node _T_94 = cat(_T_93, _T_86) @[CRA.scala 38:44]
    node _T_95 = cat(_T_94, _T_79) @[CRA.scala 38:44]
    io.s <= _T_95 @[CRA.scala 38:8]
    wire _T_96 : UInt<1>[32] @[CRA.scala 41:18]
    _T_96[0] <= FA1.io.g @[CRA.scala 41:18]
    _T_96[1] <= FA1_1.io.g @[CRA.scala 41:18]
    _T_96[2] <= FA1_2.io.g @[CRA.scala 41:18]
    _T_96[3] <= FA1_3.io.g @[CRA.scala 41:18]
    _T_96[4] <= FA1_4.io.g @[CRA.scala 41:18]
    _T_96[5] <= FA1_5.io.g @[CRA.scala 41:18]
    _T_96[6] <= FA1_6.io.g @[CRA.scala 41:18]
    _T_96[7] <= FA1_7.io.g @[CRA.scala 41:18]
    _T_96[8] <= FA1_8.io.g @[CRA.scala 41:18]
    _T_96[9] <= FA1_9.io.g @[CRA.scala 41:18]
    _T_96[10] <= FA1_10.io.g @[CRA.scala 41:18]
    _T_96[11] <= FA1_11.io.g @[CRA.scala 41:18]
    _T_96[12] <= FA1_12.io.g @[CRA.scala 41:18]
    _T_96[13] <= FA1_13.io.g @[CRA.scala 41:18]
    _T_96[14] <= FA1_14.io.g @[CRA.scala 41:18]
    _T_96[15] <= FA1_15.io.g @[CRA.scala 41:18]
    _T_96[16] <= FA1_16.io.g @[CRA.scala 41:18]
    _T_96[17] <= FA1_17.io.g @[CRA.scala 41:18]
    _T_96[18] <= FA1_18.io.g @[CRA.scala 41:18]
    _T_96[19] <= FA1_19.io.g @[CRA.scala 41:18]
    _T_96[20] <= FA1_20.io.g @[CRA.scala 41:18]
    _T_96[21] <= FA1_21.io.g @[CRA.scala 41:18]
    _T_96[22] <= FA1_22.io.g @[CRA.scala 41:18]
    _T_96[23] <= FA1_23.io.g @[CRA.scala 41:18]
    _T_96[24] <= FA1_24.io.g @[CRA.scala 41:18]
    _T_96[25] <= FA1_25.io.g @[CRA.scala 41:18]
    _T_96[26] <= FA1_26.io.g @[CRA.scala 41:18]
    _T_96[27] <= FA1_27.io.g @[CRA.scala 41:18]
    _T_96[28] <= FA1_28.io.g @[CRA.scala 41:18]
    _T_96[29] <= FA1_29.io.g @[CRA.scala 41:18]
    _T_96[30] <= FA1_30.io.g @[CRA.scala 41:18]
    _T_96[31] <= FA1_31.io.g @[CRA.scala 41:18]
    node _T_97 = cat(_T_96[1], _T_96[0]) @[CRA.scala 41:44]
    node _T_98 = cat(_T_96[3], _T_96[2]) @[CRA.scala 41:44]
    node _T_99 = cat(_T_98, _T_97) @[CRA.scala 41:44]
    node _T_100 = cat(_T_96[5], _T_96[4]) @[CRA.scala 41:44]
    node _T_101 = cat(_T_96[7], _T_96[6]) @[CRA.scala 41:44]
    node _T_102 = cat(_T_101, _T_100) @[CRA.scala 41:44]
    node _T_103 = cat(_T_102, _T_99) @[CRA.scala 41:44]
    node _T_104 = cat(_T_96[9], _T_96[8]) @[CRA.scala 41:44]
    node _T_105 = cat(_T_96[11], _T_96[10]) @[CRA.scala 41:44]
    node _T_106 = cat(_T_105, _T_104) @[CRA.scala 41:44]
    node _T_107 = cat(_T_96[13], _T_96[12]) @[CRA.scala 41:44]
    node _T_108 = cat(_T_96[15], _T_96[14]) @[CRA.scala 41:44]
    node _T_109 = cat(_T_108, _T_107) @[CRA.scala 41:44]
    node _T_110 = cat(_T_109, _T_106) @[CRA.scala 41:44]
    node _T_111 = cat(_T_110, _T_103) @[CRA.scala 41:44]
    node _T_112 = cat(_T_96[17], _T_96[16]) @[CRA.scala 41:44]
    node _T_113 = cat(_T_96[19], _T_96[18]) @[CRA.scala 41:44]
    node _T_114 = cat(_T_113, _T_112) @[CRA.scala 41:44]
    node _T_115 = cat(_T_96[21], _T_96[20]) @[CRA.scala 41:44]
    node _T_116 = cat(_T_96[23], _T_96[22]) @[CRA.scala 41:44]
    node _T_117 = cat(_T_116, _T_115) @[CRA.scala 41:44]
    node _T_118 = cat(_T_117, _T_114) @[CRA.scala 41:44]
    node _T_119 = cat(_T_96[25], _T_96[24]) @[CRA.scala 41:44]
    node _T_120 = cat(_T_96[27], _T_96[26]) @[CRA.scala 41:44]
    node _T_121 = cat(_T_120, _T_119) @[CRA.scala 41:44]
    node _T_122 = cat(_T_96[29], _T_96[28]) @[CRA.scala 41:44]
    node _T_123 = cat(_T_96[31], _T_96[30]) @[CRA.scala 41:44]
    node _T_124 = cat(_T_123, _T_122) @[CRA.scala 41:44]
    node _T_125 = cat(_T_124, _T_121) @[CRA.scala 41:44]
    node _T_126 = cat(_T_125, _T_118) @[CRA.scala 41:44]
    node _T_127 = cat(_T_126, _T_111) @[CRA.scala 41:44]
    io.g <= _T_127 @[CRA.scala 41:8]
    wire _T_128 : UInt<1>[32] @[CRA.scala 42:18]
    _T_128[0] <= FA1.io.p @[CRA.scala 42:18]
    _T_128[1] <= FA1_1.io.p @[CRA.scala 42:18]
    _T_128[2] <= FA1_2.io.p @[CRA.scala 42:18]
    _T_128[3] <= FA1_3.io.p @[CRA.scala 42:18]
    _T_128[4] <= FA1_4.io.p @[CRA.scala 42:18]
    _T_128[5] <= FA1_5.io.p @[CRA.scala 42:18]
    _T_128[6] <= FA1_6.io.p @[CRA.scala 42:18]
    _T_128[7] <= FA1_7.io.p @[CRA.scala 42:18]
    _T_128[8] <= FA1_8.io.p @[CRA.scala 42:18]
    _T_128[9] <= FA1_9.io.p @[CRA.scala 42:18]
    _T_128[10] <= FA1_10.io.p @[CRA.scala 42:18]
    _T_128[11] <= FA1_11.io.p @[CRA.scala 42:18]
    _T_128[12] <= FA1_12.io.p @[CRA.scala 42:18]
    _T_128[13] <= FA1_13.io.p @[CRA.scala 42:18]
    _T_128[14] <= FA1_14.io.p @[CRA.scala 42:18]
    _T_128[15] <= FA1_15.io.p @[CRA.scala 42:18]
    _T_128[16] <= FA1_16.io.p @[CRA.scala 42:18]
    _T_128[17] <= FA1_17.io.p @[CRA.scala 42:18]
    _T_128[18] <= FA1_18.io.p @[CRA.scala 42:18]
    _T_128[19] <= FA1_19.io.p @[CRA.scala 42:18]
    _T_128[20] <= FA1_20.io.p @[CRA.scala 42:18]
    _T_128[21] <= FA1_21.io.p @[CRA.scala 42:18]
    _T_128[22] <= FA1_22.io.p @[CRA.scala 42:18]
    _T_128[23] <= FA1_23.io.p @[CRA.scala 42:18]
    _T_128[24] <= FA1_24.io.p @[CRA.scala 42:18]
    _T_128[25] <= FA1_25.io.p @[CRA.scala 42:18]
    _T_128[26] <= FA1_26.io.p @[CRA.scala 42:18]
    _T_128[27] <= FA1_27.io.p @[CRA.scala 42:18]
    _T_128[28] <= FA1_28.io.p @[CRA.scala 42:18]
    _T_128[29] <= FA1_29.io.p @[CRA.scala 42:18]
    _T_128[30] <= FA1_30.io.p @[CRA.scala 42:18]
    _T_128[31] <= FA1_31.io.p @[CRA.scala 42:18]
    node _T_129 = cat(_T_128[1], _T_128[0]) @[CRA.scala 42:44]
    node _T_130 = cat(_T_128[3], _T_128[2]) @[CRA.scala 42:44]
    node _T_131 = cat(_T_130, _T_129) @[CRA.scala 42:44]
    node _T_132 = cat(_T_128[5], _T_128[4]) @[CRA.scala 42:44]
    node _T_133 = cat(_T_128[7], _T_128[6]) @[CRA.scala 42:44]
    node _T_134 = cat(_T_133, _T_132) @[CRA.scala 42:44]
    node _T_135 = cat(_T_134, _T_131) @[CRA.scala 42:44]
    node _T_136 = cat(_T_128[9], _T_128[8]) @[CRA.scala 42:44]
    node _T_137 = cat(_T_128[11], _T_128[10]) @[CRA.scala 42:44]
    node _T_138 = cat(_T_137, _T_136) @[CRA.scala 42:44]
    node _T_139 = cat(_T_128[13], _T_128[12]) @[CRA.scala 42:44]
    node _T_140 = cat(_T_128[15], _T_128[14]) @[CRA.scala 42:44]
    node _T_141 = cat(_T_140, _T_139) @[CRA.scala 42:44]
    node _T_142 = cat(_T_141, _T_138) @[CRA.scala 42:44]
    node _T_143 = cat(_T_142, _T_135) @[CRA.scala 42:44]
    node _T_144 = cat(_T_128[17], _T_128[16]) @[CRA.scala 42:44]
    node _T_145 = cat(_T_128[19], _T_128[18]) @[CRA.scala 42:44]
    node _T_146 = cat(_T_145, _T_144) @[CRA.scala 42:44]
    node _T_147 = cat(_T_128[21], _T_128[20]) @[CRA.scala 42:44]
    node _T_148 = cat(_T_128[23], _T_128[22]) @[CRA.scala 42:44]
    node _T_149 = cat(_T_148, _T_147) @[CRA.scala 42:44]
    node _T_150 = cat(_T_149, _T_146) @[CRA.scala 42:44]
    node _T_151 = cat(_T_128[25], _T_128[24]) @[CRA.scala 42:44]
    node _T_152 = cat(_T_128[27], _T_128[26]) @[CRA.scala 42:44]
    node _T_153 = cat(_T_152, _T_151) @[CRA.scala 42:44]
    node _T_154 = cat(_T_128[29], _T_128[28]) @[CRA.scala 42:44]
    node _T_155 = cat(_T_128[31], _T_128[30]) @[CRA.scala 42:44]
    node _T_156 = cat(_T_155, _T_154) @[CRA.scala 42:44]
    node _T_157 = cat(_T_156, _T_153) @[CRA.scala 42:44]
    node _T_158 = cat(_T_157, _T_150) @[CRA.scala 42:44]
    node _T_159 = cat(_T_158, _T_143) @[CRA.scala 42:44]
    io.p <= _T_159 @[CRA.scala 42:8]
    
  module FA1_32 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_33 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_34 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_35 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_36 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_37 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_38 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_39 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_40 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_41 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_42 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_43 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_44 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_45 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_46 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_47 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_48 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_49 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_50 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_51 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_52 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_53 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_54 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_55 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_56 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_57 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_58 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_59 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_60 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_61 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_62 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module FA1_63 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, flip cin : UInt<1>, s : UInt<1>, cout : UInt<1>, g : UInt<1>, p : UInt<1>}
    
    node p = xor(io.x, io.y) @[FA1.scala 20:23]
    node g = and(io.x, io.y) @[FA1.scala 21:23]
    node _T = xor(p, io.cin) @[FA1.scala 24:13]
    io.s <= _T @[FA1.scala 24:8]
    node _T_1 = and(p, io.cin) @[FA1.scala 27:21]
    node _T_2 = or(g, _T_1) @[FA1.scala 27:16]
    io.cout <= _T_2 @[FA1.scala 27:11]
    io.g <= g @[FA1.scala 30:8]
    io.p <= p @[FA1.scala 31:8]
    
  module CRA_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<32>, flip y : UInt<32>, flip cin : UInt<1>, s : UInt<32>, cout : UInt<1>, g : UInt<32>, p : UInt<32>}
    
    inst FA1 of FA1_32 @[CRA.scala 22:20]
    FA1.clock <= clock
    FA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CRA.scala 23:17]
    FA1.io.x <= _T @[CRA.scala 23:10]
    node _T_1 = bits(io.y, 0, 0) @[CRA.scala 24:17]
    FA1.io.y <= _T_1 @[CRA.scala 24:10]
    inst FA1_1 of FA1_33 @[CRA.scala 22:20]
    FA1_1.clock <= clock
    FA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CRA.scala 23:17]
    FA1_1.io.x <= _T_2 @[CRA.scala 23:10]
    node _T_3 = bits(io.y, 1, 1) @[CRA.scala 24:17]
    FA1_1.io.y <= _T_3 @[CRA.scala 24:10]
    inst FA1_2 of FA1_34 @[CRA.scala 22:20]
    FA1_2.clock <= clock
    FA1_2.reset <= reset
    node _T_4 = bits(io.x, 2, 2) @[CRA.scala 23:17]
    FA1_2.io.x <= _T_4 @[CRA.scala 23:10]
    node _T_5 = bits(io.y, 2, 2) @[CRA.scala 24:17]
    FA1_2.io.y <= _T_5 @[CRA.scala 24:10]
    inst FA1_3 of FA1_35 @[CRA.scala 22:20]
    FA1_3.clock <= clock
    FA1_3.reset <= reset
    node _T_6 = bits(io.x, 3, 3) @[CRA.scala 23:17]
    FA1_3.io.x <= _T_6 @[CRA.scala 23:10]
    node _T_7 = bits(io.y, 3, 3) @[CRA.scala 24:17]
    FA1_3.io.y <= _T_7 @[CRA.scala 24:10]
    inst FA1_4 of FA1_36 @[CRA.scala 22:20]
    FA1_4.clock <= clock
    FA1_4.reset <= reset
    node _T_8 = bits(io.x, 4, 4) @[CRA.scala 23:17]
    FA1_4.io.x <= _T_8 @[CRA.scala 23:10]
    node _T_9 = bits(io.y, 4, 4) @[CRA.scala 24:17]
    FA1_4.io.y <= _T_9 @[CRA.scala 24:10]
    inst FA1_5 of FA1_37 @[CRA.scala 22:20]
    FA1_5.clock <= clock
    FA1_5.reset <= reset
    node _T_10 = bits(io.x, 5, 5) @[CRA.scala 23:17]
    FA1_5.io.x <= _T_10 @[CRA.scala 23:10]
    node _T_11 = bits(io.y, 5, 5) @[CRA.scala 24:17]
    FA1_5.io.y <= _T_11 @[CRA.scala 24:10]
    inst FA1_6 of FA1_38 @[CRA.scala 22:20]
    FA1_6.clock <= clock
    FA1_6.reset <= reset
    node _T_12 = bits(io.x, 6, 6) @[CRA.scala 23:17]
    FA1_6.io.x <= _T_12 @[CRA.scala 23:10]
    node _T_13 = bits(io.y, 6, 6) @[CRA.scala 24:17]
    FA1_6.io.y <= _T_13 @[CRA.scala 24:10]
    inst FA1_7 of FA1_39 @[CRA.scala 22:20]
    FA1_7.clock <= clock
    FA1_7.reset <= reset
    node _T_14 = bits(io.x, 7, 7) @[CRA.scala 23:17]
    FA1_7.io.x <= _T_14 @[CRA.scala 23:10]
    node _T_15 = bits(io.y, 7, 7) @[CRA.scala 24:17]
    FA1_7.io.y <= _T_15 @[CRA.scala 24:10]
    inst FA1_8 of FA1_40 @[CRA.scala 22:20]
    FA1_8.clock <= clock
    FA1_8.reset <= reset
    node _T_16 = bits(io.x, 8, 8) @[CRA.scala 23:17]
    FA1_8.io.x <= _T_16 @[CRA.scala 23:10]
    node _T_17 = bits(io.y, 8, 8) @[CRA.scala 24:17]
    FA1_8.io.y <= _T_17 @[CRA.scala 24:10]
    inst FA1_9 of FA1_41 @[CRA.scala 22:20]
    FA1_9.clock <= clock
    FA1_9.reset <= reset
    node _T_18 = bits(io.x, 9, 9) @[CRA.scala 23:17]
    FA1_9.io.x <= _T_18 @[CRA.scala 23:10]
    node _T_19 = bits(io.y, 9, 9) @[CRA.scala 24:17]
    FA1_9.io.y <= _T_19 @[CRA.scala 24:10]
    inst FA1_10 of FA1_42 @[CRA.scala 22:20]
    FA1_10.clock <= clock
    FA1_10.reset <= reset
    node _T_20 = bits(io.x, 10, 10) @[CRA.scala 23:17]
    FA1_10.io.x <= _T_20 @[CRA.scala 23:10]
    node _T_21 = bits(io.y, 10, 10) @[CRA.scala 24:17]
    FA1_10.io.y <= _T_21 @[CRA.scala 24:10]
    inst FA1_11 of FA1_43 @[CRA.scala 22:20]
    FA1_11.clock <= clock
    FA1_11.reset <= reset
    node _T_22 = bits(io.x, 11, 11) @[CRA.scala 23:17]
    FA1_11.io.x <= _T_22 @[CRA.scala 23:10]
    node _T_23 = bits(io.y, 11, 11) @[CRA.scala 24:17]
    FA1_11.io.y <= _T_23 @[CRA.scala 24:10]
    inst FA1_12 of FA1_44 @[CRA.scala 22:20]
    FA1_12.clock <= clock
    FA1_12.reset <= reset
    node _T_24 = bits(io.x, 12, 12) @[CRA.scala 23:17]
    FA1_12.io.x <= _T_24 @[CRA.scala 23:10]
    node _T_25 = bits(io.y, 12, 12) @[CRA.scala 24:17]
    FA1_12.io.y <= _T_25 @[CRA.scala 24:10]
    inst FA1_13 of FA1_45 @[CRA.scala 22:20]
    FA1_13.clock <= clock
    FA1_13.reset <= reset
    node _T_26 = bits(io.x, 13, 13) @[CRA.scala 23:17]
    FA1_13.io.x <= _T_26 @[CRA.scala 23:10]
    node _T_27 = bits(io.y, 13, 13) @[CRA.scala 24:17]
    FA1_13.io.y <= _T_27 @[CRA.scala 24:10]
    inst FA1_14 of FA1_46 @[CRA.scala 22:20]
    FA1_14.clock <= clock
    FA1_14.reset <= reset
    node _T_28 = bits(io.x, 14, 14) @[CRA.scala 23:17]
    FA1_14.io.x <= _T_28 @[CRA.scala 23:10]
    node _T_29 = bits(io.y, 14, 14) @[CRA.scala 24:17]
    FA1_14.io.y <= _T_29 @[CRA.scala 24:10]
    inst FA1_15 of FA1_47 @[CRA.scala 22:20]
    FA1_15.clock <= clock
    FA1_15.reset <= reset
    node _T_30 = bits(io.x, 15, 15) @[CRA.scala 23:17]
    FA1_15.io.x <= _T_30 @[CRA.scala 23:10]
    node _T_31 = bits(io.y, 15, 15) @[CRA.scala 24:17]
    FA1_15.io.y <= _T_31 @[CRA.scala 24:10]
    inst FA1_16 of FA1_48 @[CRA.scala 22:20]
    FA1_16.clock <= clock
    FA1_16.reset <= reset
    node _T_32 = bits(io.x, 16, 16) @[CRA.scala 23:17]
    FA1_16.io.x <= _T_32 @[CRA.scala 23:10]
    node _T_33 = bits(io.y, 16, 16) @[CRA.scala 24:17]
    FA1_16.io.y <= _T_33 @[CRA.scala 24:10]
    inst FA1_17 of FA1_49 @[CRA.scala 22:20]
    FA1_17.clock <= clock
    FA1_17.reset <= reset
    node _T_34 = bits(io.x, 17, 17) @[CRA.scala 23:17]
    FA1_17.io.x <= _T_34 @[CRA.scala 23:10]
    node _T_35 = bits(io.y, 17, 17) @[CRA.scala 24:17]
    FA1_17.io.y <= _T_35 @[CRA.scala 24:10]
    inst FA1_18 of FA1_50 @[CRA.scala 22:20]
    FA1_18.clock <= clock
    FA1_18.reset <= reset
    node _T_36 = bits(io.x, 18, 18) @[CRA.scala 23:17]
    FA1_18.io.x <= _T_36 @[CRA.scala 23:10]
    node _T_37 = bits(io.y, 18, 18) @[CRA.scala 24:17]
    FA1_18.io.y <= _T_37 @[CRA.scala 24:10]
    inst FA1_19 of FA1_51 @[CRA.scala 22:20]
    FA1_19.clock <= clock
    FA1_19.reset <= reset
    node _T_38 = bits(io.x, 19, 19) @[CRA.scala 23:17]
    FA1_19.io.x <= _T_38 @[CRA.scala 23:10]
    node _T_39 = bits(io.y, 19, 19) @[CRA.scala 24:17]
    FA1_19.io.y <= _T_39 @[CRA.scala 24:10]
    inst FA1_20 of FA1_52 @[CRA.scala 22:20]
    FA1_20.clock <= clock
    FA1_20.reset <= reset
    node _T_40 = bits(io.x, 20, 20) @[CRA.scala 23:17]
    FA1_20.io.x <= _T_40 @[CRA.scala 23:10]
    node _T_41 = bits(io.y, 20, 20) @[CRA.scala 24:17]
    FA1_20.io.y <= _T_41 @[CRA.scala 24:10]
    inst FA1_21 of FA1_53 @[CRA.scala 22:20]
    FA1_21.clock <= clock
    FA1_21.reset <= reset
    node _T_42 = bits(io.x, 21, 21) @[CRA.scala 23:17]
    FA1_21.io.x <= _T_42 @[CRA.scala 23:10]
    node _T_43 = bits(io.y, 21, 21) @[CRA.scala 24:17]
    FA1_21.io.y <= _T_43 @[CRA.scala 24:10]
    inst FA1_22 of FA1_54 @[CRA.scala 22:20]
    FA1_22.clock <= clock
    FA1_22.reset <= reset
    node _T_44 = bits(io.x, 22, 22) @[CRA.scala 23:17]
    FA1_22.io.x <= _T_44 @[CRA.scala 23:10]
    node _T_45 = bits(io.y, 22, 22) @[CRA.scala 24:17]
    FA1_22.io.y <= _T_45 @[CRA.scala 24:10]
    inst FA1_23 of FA1_55 @[CRA.scala 22:20]
    FA1_23.clock <= clock
    FA1_23.reset <= reset
    node _T_46 = bits(io.x, 23, 23) @[CRA.scala 23:17]
    FA1_23.io.x <= _T_46 @[CRA.scala 23:10]
    node _T_47 = bits(io.y, 23, 23) @[CRA.scala 24:17]
    FA1_23.io.y <= _T_47 @[CRA.scala 24:10]
    inst FA1_24 of FA1_56 @[CRA.scala 22:20]
    FA1_24.clock <= clock
    FA1_24.reset <= reset
    node _T_48 = bits(io.x, 24, 24) @[CRA.scala 23:17]
    FA1_24.io.x <= _T_48 @[CRA.scala 23:10]
    node _T_49 = bits(io.y, 24, 24) @[CRA.scala 24:17]
    FA1_24.io.y <= _T_49 @[CRA.scala 24:10]
    inst FA1_25 of FA1_57 @[CRA.scala 22:20]
    FA1_25.clock <= clock
    FA1_25.reset <= reset
    node _T_50 = bits(io.x, 25, 25) @[CRA.scala 23:17]
    FA1_25.io.x <= _T_50 @[CRA.scala 23:10]
    node _T_51 = bits(io.y, 25, 25) @[CRA.scala 24:17]
    FA1_25.io.y <= _T_51 @[CRA.scala 24:10]
    inst FA1_26 of FA1_58 @[CRA.scala 22:20]
    FA1_26.clock <= clock
    FA1_26.reset <= reset
    node _T_52 = bits(io.x, 26, 26) @[CRA.scala 23:17]
    FA1_26.io.x <= _T_52 @[CRA.scala 23:10]
    node _T_53 = bits(io.y, 26, 26) @[CRA.scala 24:17]
    FA1_26.io.y <= _T_53 @[CRA.scala 24:10]
    inst FA1_27 of FA1_59 @[CRA.scala 22:20]
    FA1_27.clock <= clock
    FA1_27.reset <= reset
    node _T_54 = bits(io.x, 27, 27) @[CRA.scala 23:17]
    FA1_27.io.x <= _T_54 @[CRA.scala 23:10]
    node _T_55 = bits(io.y, 27, 27) @[CRA.scala 24:17]
    FA1_27.io.y <= _T_55 @[CRA.scala 24:10]
    inst FA1_28 of FA1_60 @[CRA.scala 22:20]
    FA1_28.clock <= clock
    FA1_28.reset <= reset
    node _T_56 = bits(io.x, 28, 28) @[CRA.scala 23:17]
    FA1_28.io.x <= _T_56 @[CRA.scala 23:10]
    node _T_57 = bits(io.y, 28, 28) @[CRA.scala 24:17]
    FA1_28.io.y <= _T_57 @[CRA.scala 24:10]
    inst FA1_29 of FA1_61 @[CRA.scala 22:20]
    FA1_29.clock <= clock
    FA1_29.reset <= reset
    node _T_58 = bits(io.x, 29, 29) @[CRA.scala 23:17]
    FA1_29.io.x <= _T_58 @[CRA.scala 23:10]
    node _T_59 = bits(io.y, 29, 29) @[CRA.scala 24:17]
    FA1_29.io.y <= _T_59 @[CRA.scala 24:10]
    inst FA1_30 of FA1_62 @[CRA.scala 22:20]
    FA1_30.clock <= clock
    FA1_30.reset <= reset
    node _T_60 = bits(io.x, 30, 30) @[CRA.scala 23:17]
    FA1_30.io.x <= _T_60 @[CRA.scala 23:10]
    node _T_61 = bits(io.y, 30, 30) @[CRA.scala 24:17]
    FA1_30.io.y <= _T_61 @[CRA.scala 24:10]
    inst FA1_31 of FA1_63 @[CRA.scala 22:20]
    FA1_31.clock <= clock
    FA1_31.reset <= reset
    node _T_62 = bits(io.x, 31, 31) @[CRA.scala 23:17]
    FA1_31.io.x <= _T_62 @[CRA.scala 23:10]
    node _T_63 = bits(io.y, 31, 31) @[CRA.scala 24:17]
    FA1_31.io.y <= _T_63 @[CRA.scala 24:10]
    FA1_1.io.cin <= FA1.io.cout @[CRA.scala 30:27]
    FA1_2.io.cin <= FA1_1.io.cout @[CRA.scala 30:27]
    FA1_3.io.cin <= FA1_2.io.cout @[CRA.scala 30:27]
    FA1_4.io.cin <= FA1_3.io.cout @[CRA.scala 30:27]
    FA1_5.io.cin <= FA1_4.io.cout @[CRA.scala 30:27]
    FA1_6.io.cin <= FA1_5.io.cout @[CRA.scala 30:27]
    FA1_7.io.cin <= FA1_6.io.cout @[CRA.scala 30:27]
    FA1_8.io.cin <= FA1_7.io.cout @[CRA.scala 30:27]
    FA1_9.io.cin <= FA1_8.io.cout @[CRA.scala 30:27]
    FA1_10.io.cin <= FA1_9.io.cout @[CRA.scala 30:27]
    FA1_11.io.cin <= FA1_10.io.cout @[CRA.scala 30:27]
    FA1_12.io.cin <= FA1_11.io.cout @[CRA.scala 30:27]
    FA1_13.io.cin <= FA1_12.io.cout @[CRA.scala 30:27]
    FA1_14.io.cin <= FA1_13.io.cout @[CRA.scala 30:27]
    FA1_15.io.cin <= FA1_14.io.cout @[CRA.scala 30:27]
    FA1_16.io.cin <= FA1_15.io.cout @[CRA.scala 30:27]
    FA1_17.io.cin <= FA1_16.io.cout @[CRA.scala 30:27]
    FA1_18.io.cin <= FA1_17.io.cout @[CRA.scala 30:27]
    FA1_19.io.cin <= FA1_18.io.cout @[CRA.scala 30:27]
    FA1_20.io.cin <= FA1_19.io.cout @[CRA.scala 30:27]
    FA1_21.io.cin <= FA1_20.io.cout @[CRA.scala 30:27]
    FA1_22.io.cin <= FA1_21.io.cout @[CRA.scala 30:27]
    FA1_23.io.cin <= FA1_22.io.cout @[CRA.scala 30:27]
    FA1_24.io.cin <= FA1_23.io.cout @[CRA.scala 30:27]
    FA1_25.io.cin <= FA1_24.io.cout @[CRA.scala 30:27]
    FA1_26.io.cin <= FA1_25.io.cout @[CRA.scala 30:27]
    FA1_27.io.cin <= FA1_26.io.cout @[CRA.scala 30:27]
    FA1_28.io.cin <= FA1_27.io.cout @[CRA.scala 30:27]
    FA1_29.io.cin <= FA1_28.io.cout @[CRA.scala 30:27]
    FA1_30.io.cin <= FA1_29.io.cout @[CRA.scala 30:27]
    FA1_31.io.cin <= FA1_30.io.cout @[CRA.scala 30:27]
    FA1.io.cin <= io.cin @[CRA.scala 34:21]
    io.cout <= FA1_31.io.cout @[CRA.scala 35:11]
    wire _T_64 : UInt<1>[32] @[CRA.scala 38:18]
    _T_64[0] <= FA1.io.s @[CRA.scala 38:18]
    _T_64[1] <= FA1_1.io.s @[CRA.scala 38:18]
    _T_64[2] <= FA1_2.io.s @[CRA.scala 38:18]
    _T_64[3] <= FA1_3.io.s @[CRA.scala 38:18]
    _T_64[4] <= FA1_4.io.s @[CRA.scala 38:18]
    _T_64[5] <= FA1_5.io.s @[CRA.scala 38:18]
    _T_64[6] <= FA1_6.io.s @[CRA.scala 38:18]
    _T_64[7] <= FA1_7.io.s @[CRA.scala 38:18]
    _T_64[8] <= FA1_8.io.s @[CRA.scala 38:18]
    _T_64[9] <= FA1_9.io.s @[CRA.scala 38:18]
    _T_64[10] <= FA1_10.io.s @[CRA.scala 38:18]
    _T_64[11] <= FA1_11.io.s @[CRA.scala 38:18]
    _T_64[12] <= FA1_12.io.s @[CRA.scala 38:18]
    _T_64[13] <= FA1_13.io.s @[CRA.scala 38:18]
    _T_64[14] <= FA1_14.io.s @[CRA.scala 38:18]
    _T_64[15] <= FA1_15.io.s @[CRA.scala 38:18]
    _T_64[16] <= FA1_16.io.s @[CRA.scala 38:18]
    _T_64[17] <= FA1_17.io.s @[CRA.scala 38:18]
    _T_64[18] <= FA1_18.io.s @[CRA.scala 38:18]
    _T_64[19] <= FA1_19.io.s @[CRA.scala 38:18]
    _T_64[20] <= FA1_20.io.s @[CRA.scala 38:18]
    _T_64[21] <= FA1_21.io.s @[CRA.scala 38:18]
    _T_64[22] <= FA1_22.io.s @[CRA.scala 38:18]
    _T_64[23] <= FA1_23.io.s @[CRA.scala 38:18]
    _T_64[24] <= FA1_24.io.s @[CRA.scala 38:18]
    _T_64[25] <= FA1_25.io.s @[CRA.scala 38:18]
    _T_64[26] <= FA1_26.io.s @[CRA.scala 38:18]
    _T_64[27] <= FA1_27.io.s @[CRA.scala 38:18]
    _T_64[28] <= FA1_28.io.s @[CRA.scala 38:18]
    _T_64[29] <= FA1_29.io.s @[CRA.scala 38:18]
    _T_64[30] <= FA1_30.io.s @[CRA.scala 38:18]
    _T_64[31] <= FA1_31.io.s @[CRA.scala 38:18]
    node _T_65 = cat(_T_64[1], _T_64[0]) @[CRA.scala 38:44]
    node _T_66 = cat(_T_64[3], _T_64[2]) @[CRA.scala 38:44]
    node _T_67 = cat(_T_66, _T_65) @[CRA.scala 38:44]
    node _T_68 = cat(_T_64[5], _T_64[4]) @[CRA.scala 38:44]
    node _T_69 = cat(_T_64[7], _T_64[6]) @[CRA.scala 38:44]
    node _T_70 = cat(_T_69, _T_68) @[CRA.scala 38:44]
    node _T_71 = cat(_T_70, _T_67) @[CRA.scala 38:44]
    node _T_72 = cat(_T_64[9], _T_64[8]) @[CRA.scala 38:44]
    node _T_73 = cat(_T_64[11], _T_64[10]) @[CRA.scala 38:44]
    node _T_74 = cat(_T_73, _T_72) @[CRA.scala 38:44]
    node _T_75 = cat(_T_64[13], _T_64[12]) @[CRA.scala 38:44]
    node _T_76 = cat(_T_64[15], _T_64[14]) @[CRA.scala 38:44]
    node _T_77 = cat(_T_76, _T_75) @[CRA.scala 38:44]
    node _T_78 = cat(_T_77, _T_74) @[CRA.scala 38:44]
    node _T_79 = cat(_T_78, _T_71) @[CRA.scala 38:44]
    node _T_80 = cat(_T_64[17], _T_64[16]) @[CRA.scala 38:44]
    node _T_81 = cat(_T_64[19], _T_64[18]) @[CRA.scala 38:44]
    node _T_82 = cat(_T_81, _T_80) @[CRA.scala 38:44]
    node _T_83 = cat(_T_64[21], _T_64[20]) @[CRA.scala 38:44]
    node _T_84 = cat(_T_64[23], _T_64[22]) @[CRA.scala 38:44]
    node _T_85 = cat(_T_84, _T_83) @[CRA.scala 38:44]
    node _T_86 = cat(_T_85, _T_82) @[CRA.scala 38:44]
    node _T_87 = cat(_T_64[25], _T_64[24]) @[CRA.scala 38:44]
    node _T_88 = cat(_T_64[27], _T_64[26]) @[CRA.scala 38:44]
    node _T_89 = cat(_T_88, _T_87) @[CRA.scala 38:44]
    node _T_90 = cat(_T_64[29], _T_64[28]) @[CRA.scala 38:44]
    node _T_91 = cat(_T_64[31], _T_64[30]) @[CRA.scala 38:44]
    node _T_92 = cat(_T_91, _T_90) @[CRA.scala 38:44]
    node _T_93 = cat(_T_92, _T_89) @[CRA.scala 38:44]
    node _T_94 = cat(_T_93, _T_86) @[CRA.scala 38:44]
    node _T_95 = cat(_T_94, _T_79) @[CRA.scala 38:44]
    io.s <= _T_95 @[CRA.scala 38:8]
    wire _T_96 : UInt<1>[32] @[CRA.scala 41:18]
    _T_96[0] <= FA1.io.g @[CRA.scala 41:18]
    _T_96[1] <= FA1_1.io.g @[CRA.scala 41:18]
    _T_96[2] <= FA1_2.io.g @[CRA.scala 41:18]
    _T_96[3] <= FA1_3.io.g @[CRA.scala 41:18]
    _T_96[4] <= FA1_4.io.g @[CRA.scala 41:18]
    _T_96[5] <= FA1_5.io.g @[CRA.scala 41:18]
    _T_96[6] <= FA1_6.io.g @[CRA.scala 41:18]
    _T_96[7] <= FA1_7.io.g @[CRA.scala 41:18]
    _T_96[8] <= FA1_8.io.g @[CRA.scala 41:18]
    _T_96[9] <= FA1_9.io.g @[CRA.scala 41:18]
    _T_96[10] <= FA1_10.io.g @[CRA.scala 41:18]
    _T_96[11] <= FA1_11.io.g @[CRA.scala 41:18]
    _T_96[12] <= FA1_12.io.g @[CRA.scala 41:18]
    _T_96[13] <= FA1_13.io.g @[CRA.scala 41:18]
    _T_96[14] <= FA1_14.io.g @[CRA.scala 41:18]
    _T_96[15] <= FA1_15.io.g @[CRA.scala 41:18]
    _T_96[16] <= FA1_16.io.g @[CRA.scala 41:18]
    _T_96[17] <= FA1_17.io.g @[CRA.scala 41:18]
    _T_96[18] <= FA1_18.io.g @[CRA.scala 41:18]
    _T_96[19] <= FA1_19.io.g @[CRA.scala 41:18]
    _T_96[20] <= FA1_20.io.g @[CRA.scala 41:18]
    _T_96[21] <= FA1_21.io.g @[CRA.scala 41:18]
    _T_96[22] <= FA1_22.io.g @[CRA.scala 41:18]
    _T_96[23] <= FA1_23.io.g @[CRA.scala 41:18]
    _T_96[24] <= FA1_24.io.g @[CRA.scala 41:18]
    _T_96[25] <= FA1_25.io.g @[CRA.scala 41:18]
    _T_96[26] <= FA1_26.io.g @[CRA.scala 41:18]
    _T_96[27] <= FA1_27.io.g @[CRA.scala 41:18]
    _T_96[28] <= FA1_28.io.g @[CRA.scala 41:18]
    _T_96[29] <= FA1_29.io.g @[CRA.scala 41:18]
    _T_96[30] <= FA1_30.io.g @[CRA.scala 41:18]
    _T_96[31] <= FA1_31.io.g @[CRA.scala 41:18]
    node _T_97 = cat(_T_96[1], _T_96[0]) @[CRA.scala 41:44]
    node _T_98 = cat(_T_96[3], _T_96[2]) @[CRA.scala 41:44]
    node _T_99 = cat(_T_98, _T_97) @[CRA.scala 41:44]
    node _T_100 = cat(_T_96[5], _T_96[4]) @[CRA.scala 41:44]
    node _T_101 = cat(_T_96[7], _T_96[6]) @[CRA.scala 41:44]
    node _T_102 = cat(_T_101, _T_100) @[CRA.scala 41:44]
    node _T_103 = cat(_T_102, _T_99) @[CRA.scala 41:44]
    node _T_104 = cat(_T_96[9], _T_96[8]) @[CRA.scala 41:44]
    node _T_105 = cat(_T_96[11], _T_96[10]) @[CRA.scala 41:44]
    node _T_106 = cat(_T_105, _T_104) @[CRA.scala 41:44]
    node _T_107 = cat(_T_96[13], _T_96[12]) @[CRA.scala 41:44]
    node _T_108 = cat(_T_96[15], _T_96[14]) @[CRA.scala 41:44]
    node _T_109 = cat(_T_108, _T_107) @[CRA.scala 41:44]
    node _T_110 = cat(_T_109, _T_106) @[CRA.scala 41:44]
    node _T_111 = cat(_T_110, _T_103) @[CRA.scala 41:44]
    node _T_112 = cat(_T_96[17], _T_96[16]) @[CRA.scala 41:44]
    node _T_113 = cat(_T_96[19], _T_96[18]) @[CRA.scala 41:44]
    node _T_114 = cat(_T_113, _T_112) @[CRA.scala 41:44]
    node _T_115 = cat(_T_96[21], _T_96[20]) @[CRA.scala 41:44]
    node _T_116 = cat(_T_96[23], _T_96[22]) @[CRA.scala 41:44]
    node _T_117 = cat(_T_116, _T_115) @[CRA.scala 41:44]
    node _T_118 = cat(_T_117, _T_114) @[CRA.scala 41:44]
    node _T_119 = cat(_T_96[25], _T_96[24]) @[CRA.scala 41:44]
    node _T_120 = cat(_T_96[27], _T_96[26]) @[CRA.scala 41:44]
    node _T_121 = cat(_T_120, _T_119) @[CRA.scala 41:44]
    node _T_122 = cat(_T_96[29], _T_96[28]) @[CRA.scala 41:44]
    node _T_123 = cat(_T_96[31], _T_96[30]) @[CRA.scala 41:44]
    node _T_124 = cat(_T_123, _T_122) @[CRA.scala 41:44]
    node _T_125 = cat(_T_124, _T_121) @[CRA.scala 41:44]
    node _T_126 = cat(_T_125, _T_118) @[CRA.scala 41:44]
    node _T_127 = cat(_T_126, _T_111) @[CRA.scala 41:44]
    io.g <= _T_127 @[CRA.scala 41:8]
    wire _T_128 : UInt<1>[32] @[CRA.scala 42:18]
    _T_128[0] <= FA1.io.p @[CRA.scala 42:18]
    _T_128[1] <= FA1_1.io.p @[CRA.scala 42:18]
    _T_128[2] <= FA1_2.io.p @[CRA.scala 42:18]
    _T_128[3] <= FA1_3.io.p @[CRA.scala 42:18]
    _T_128[4] <= FA1_4.io.p @[CRA.scala 42:18]
    _T_128[5] <= FA1_5.io.p @[CRA.scala 42:18]
    _T_128[6] <= FA1_6.io.p @[CRA.scala 42:18]
    _T_128[7] <= FA1_7.io.p @[CRA.scala 42:18]
    _T_128[8] <= FA1_8.io.p @[CRA.scala 42:18]
    _T_128[9] <= FA1_9.io.p @[CRA.scala 42:18]
    _T_128[10] <= FA1_10.io.p @[CRA.scala 42:18]
    _T_128[11] <= FA1_11.io.p @[CRA.scala 42:18]
    _T_128[12] <= FA1_12.io.p @[CRA.scala 42:18]
    _T_128[13] <= FA1_13.io.p @[CRA.scala 42:18]
    _T_128[14] <= FA1_14.io.p @[CRA.scala 42:18]
    _T_128[15] <= FA1_15.io.p @[CRA.scala 42:18]
    _T_128[16] <= FA1_16.io.p @[CRA.scala 42:18]
    _T_128[17] <= FA1_17.io.p @[CRA.scala 42:18]
    _T_128[18] <= FA1_18.io.p @[CRA.scala 42:18]
    _T_128[19] <= FA1_19.io.p @[CRA.scala 42:18]
    _T_128[20] <= FA1_20.io.p @[CRA.scala 42:18]
    _T_128[21] <= FA1_21.io.p @[CRA.scala 42:18]
    _T_128[22] <= FA1_22.io.p @[CRA.scala 42:18]
    _T_128[23] <= FA1_23.io.p @[CRA.scala 42:18]
    _T_128[24] <= FA1_24.io.p @[CRA.scala 42:18]
    _T_128[25] <= FA1_25.io.p @[CRA.scala 42:18]
    _T_128[26] <= FA1_26.io.p @[CRA.scala 42:18]
    _T_128[27] <= FA1_27.io.p @[CRA.scala 42:18]
    _T_128[28] <= FA1_28.io.p @[CRA.scala 42:18]
    _T_128[29] <= FA1_29.io.p @[CRA.scala 42:18]
    _T_128[30] <= FA1_30.io.p @[CRA.scala 42:18]
    _T_128[31] <= FA1_31.io.p @[CRA.scala 42:18]
    node _T_129 = cat(_T_128[1], _T_128[0]) @[CRA.scala 42:44]
    node _T_130 = cat(_T_128[3], _T_128[2]) @[CRA.scala 42:44]
    node _T_131 = cat(_T_130, _T_129) @[CRA.scala 42:44]
    node _T_132 = cat(_T_128[5], _T_128[4]) @[CRA.scala 42:44]
    node _T_133 = cat(_T_128[7], _T_128[6]) @[CRA.scala 42:44]
    node _T_134 = cat(_T_133, _T_132) @[CRA.scala 42:44]
    node _T_135 = cat(_T_134, _T_131) @[CRA.scala 42:44]
    node _T_136 = cat(_T_128[9], _T_128[8]) @[CRA.scala 42:44]
    node _T_137 = cat(_T_128[11], _T_128[10]) @[CRA.scala 42:44]
    node _T_138 = cat(_T_137, _T_136) @[CRA.scala 42:44]
    node _T_139 = cat(_T_128[13], _T_128[12]) @[CRA.scala 42:44]
    node _T_140 = cat(_T_128[15], _T_128[14]) @[CRA.scala 42:44]
    node _T_141 = cat(_T_140, _T_139) @[CRA.scala 42:44]
    node _T_142 = cat(_T_141, _T_138) @[CRA.scala 42:44]
    node _T_143 = cat(_T_142, _T_135) @[CRA.scala 42:44]
    node _T_144 = cat(_T_128[17], _T_128[16]) @[CRA.scala 42:44]
    node _T_145 = cat(_T_128[19], _T_128[18]) @[CRA.scala 42:44]
    node _T_146 = cat(_T_145, _T_144) @[CRA.scala 42:44]
    node _T_147 = cat(_T_128[21], _T_128[20]) @[CRA.scala 42:44]
    node _T_148 = cat(_T_128[23], _T_128[22]) @[CRA.scala 42:44]
    node _T_149 = cat(_T_148, _T_147) @[CRA.scala 42:44]
    node _T_150 = cat(_T_149, _T_146) @[CRA.scala 42:44]
    node _T_151 = cat(_T_128[25], _T_128[24]) @[CRA.scala 42:44]
    node _T_152 = cat(_T_128[27], _T_128[26]) @[CRA.scala 42:44]
    node _T_153 = cat(_T_152, _T_151) @[CRA.scala 42:44]
    node _T_154 = cat(_T_128[29], _T_128[28]) @[CRA.scala 42:44]
    node _T_155 = cat(_T_128[31], _T_128[30]) @[CRA.scala 42:44]
    node _T_156 = cat(_T_155, _T_154) @[CRA.scala 42:44]
    node _T_157 = cat(_T_156, _T_153) @[CRA.scala 42:44]
    node _T_158 = cat(_T_157, _T_150) @[CRA.scala 42:44]
    node _T_159 = cat(_T_158, _T_143) @[CRA.scala 42:44]
    io.p <= _T_159 @[CRA.scala 42:8]
    
  module CSK : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<64>, flip y : UInt<64>, flip cin : UInt<1>, s : UInt<64>, cout : UInt<1>}
    
    inst CRA of CRA @[CSK.scala 21:21]
    CRA.clock <= clock
    CRA.reset <= reset
    node _T = bits(io.x, 31, 0) @[CSK.scala 22:18]
    CRA.io.x <= _T @[CSK.scala 22:11]
    node _T_1 = bits(io.y, 31, 0) @[CSK.scala 23:18]
    CRA.io.y <= _T_1 @[CSK.scala 23:11]
    CRA.io.cin <= io.cin @[CSK.scala 26:15]
    inst CRA_1 of CRA_1 @[CSK.scala 21:21]
    CRA_1.clock <= clock
    CRA_1.reset <= reset
    node _T_2 = bits(io.x, 63, 32) @[CSK.scala 22:18]
    CRA_1.io.x <= _T_2 @[CSK.scala 22:11]
    node _T_3 = bits(io.y, 63, 32) @[CSK.scala 23:18]
    CRA_1.io.y <= _T_3 @[CSK.scala 23:11]
    node _T_4 = eq(CRA.io.p, UInt<32>("h0ffffffff")) @[CSK.scala 36:28]
    io.cout <= CRA_1.io.cout @[CSK.scala 39:15]
    node _T_5 = and(_T_4, io.cin) @[CSK.scala 43:37]
    node _T_6 = or(CRA.io.cout, _T_5) @[CSK.scala 43:32]
    CRA_1.io.cin <= _T_6 @[CSK.scala 43:15]
    node _T_7 = cat(CRA_1.io.s, CRA.io.s) @[Cat.scala 29:58]
    io.s <= _T_7 @[CSK.scala 52:8]
    
