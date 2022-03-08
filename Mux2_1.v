module Mux2_1
#(parameter width =32 ) (
          input [width-1:0] In1,
          input [width-1:0] In2,
          input sel,
          output reg [width-1:0] out
    );
always@(*)
if(sel)
out = In1 ;
else
out = In2 ;
endmodule