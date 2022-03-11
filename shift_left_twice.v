
module shift_left_twice 
#(parameter WIDTH =32 ) (
                          input  [WIDTH-1:0] in,
                          output [WIDTH-1:0] out
); 
assign out=in<<2;

endmodule