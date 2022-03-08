
module shift_left_twice 
#(parameter width=16)
(                           input [width-1:0] in;
                            output [width-1:0] out;
);


 
assign out=in<<2;

endmodule