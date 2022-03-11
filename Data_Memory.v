module Data_Memory #(
    parameter WIDTH = 32 , DEPTH = 100
) (
    input               clk,
    input [31:0]        A,
    input [WIDTH-1:0]   WriteData,
    input               WE,
    input               rst,
    output [WIDTH-1:0]  ReadData,
    output [15:0]       test_value
);
    reg [WIDTH-1:0] RAM [DEPTH-1:0];
    integer i;
    always @(posedge clk ,negedge rst ) begin
        if (!rst) begin
             for(i=0;i<32;i=i+1)
                    begin
                        RAM[i] <= 0;
                    end
        end 
        else begin
            RAM[A] <= WriteData;

        end
    end
    assign ReadData = RAM[A];





endmodule