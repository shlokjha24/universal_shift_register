module usr(
input [1:0]s,
input clk,
input in_sl,
input in_sr,
input [3:0]pload,

output [3:0]q

    );
wire [3:0]w;
 
mux m0 (
    .s(s),
    .hold(q[0]),
    .sr_l(in_sl),
    .sr_r(q[1]),
    .parallel(pload[0]),
    .y(w[0])
    
 );
    
    dflipflop d0(.clk(clk),.d(w[0]),.y(q[0]));
    
    mux m1 (
        .s(s),
        .hold(q[1]),
        .sr_l(q[0]),
        .sr_r(q[2]),
        .parallel(pload[1]),
        .y(w[1])
     );
        
       dflipflop d1(.clk(clk),.d(w[1 ]),.y(q[1]));
        
        
     mux m2 (
             .s(s),
            .hold(q[2]),
            .sr_l(q[1]),
            .sr_r(q[3]),
            .parallel(pload[2]),
            .y(w[2])
         );
            
            dflipflop d2(.clk(clk),.d(w[2]),.y(q[2]));
            
         mux m3 ( 
                     .s(s),
                     .hold(q[3]),
                     .sr_l(q[2]),
                     .sr_r(in_sr),
                     .parallel(pload[3]),
                     .y(w[3])
                
             );
                
                dflipflop d3(.clk(clk),.d(w[3]),.y(q[3]));   
    
endmodule
