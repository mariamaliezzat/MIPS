module ALU_32bit (
                  input [31:0] Src1,
                  input [31:0] Src2,
                  input [2:0] ALU_Control,
                  output reg [31:0] ALU_Result,
                  output Zero_Flag
);

always@(*)
begin
case(ALU_Control)
3'b000 : begin
         ALU_Result = Src1 && Src2 ;
         end 
3'b001 : begin
         ALU_Result = Src1 || Src2 ;
         end
3'b010 : begin
         ALU_Result = Src1 + Src2 ;
         end
3'b100 : begin
         ALU_Result = Src1 - Src2 ;
         end
3'b101 : begin
         ALU_Result = Src1 * Src2 ;
         end
3'b110 : begin
         if(Src1<Src2)
         ALU_Result = 1 ;
         end
default : begin
         ALU_Result = 0 ;
         end

endcase
end
assign Zero_Flag = ~(|ALU_Result);

endmodule