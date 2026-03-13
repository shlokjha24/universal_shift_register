
module mux(
input [1:0]s,
input[3:0]i,
output reg y
    );
    
always @ (*) begin    
   case (s)
   2'b00:begin
   assign y=i[0];
   end
   
   2'b01:begin
   y=i[1];
   end
   2'b10:begin
   y=i[2];
   end
   2'b11:begin
   y=i[3];
   end
   default:begin
   y=1'b0;
   end
   endcase
   end
   
endmodule
