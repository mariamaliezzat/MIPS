module Inst_Memory #(
    parameter WIDTH = 32, DEPTH =100
) (
    input [31:0] PC,
    output  [WIDTH-1:0] Instr
);
    reg [WIDTH-1:0] ROM [0:DEPTH-1] ;
    assign Instr = ROM[PC>>2] ;

    initial begin
        $readmemh ("mem.txt",ROM);
    end

    

endmodule