module mux(
input [1:0]s,
input hold,
input sr_l,
input sr_r,
input parallel,
output reg y
    );
    
   always @ (*) begin
   case (s)
   2'b00: begin
   y=hold;
   end
   2'b01: begin
   y=sr_l;
   end
   2'b10: begin
   y=sr_r;
   end
   2'b11: begin
   y=parallel;
   end
endcase
 end
