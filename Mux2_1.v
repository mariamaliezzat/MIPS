module Mux2_1
#(parameter WIDTH =32 ) (
          input [WIDTH-1:0] In1,
          input [WIDTH-1:0] In2,
          input sel,
          output reg [WIDTH-1:0] out
    );
always@(*)
if(sel)
out = In1 ;
else
out = In2 ;
endmodule