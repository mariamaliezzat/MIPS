module Program_Counter (
                        input clk,
                        input rst_b,
                        output reg [31:0] PC

);

always@(posedge clk)
begin

if(rst_b)
PC <= PC + 4;
else
PC <= 0;

end

endmodule