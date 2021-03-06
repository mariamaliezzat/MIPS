`timescale 1ns/1ns
module tb_ALU_32();
reg [31:0] tb_Src1;
reg [31:0] tb_Src2;
reg [2:0]  tb_ALU_Control;
wire [31:0] tb_ALU_Result;
wire tb_Zero_Flag;

initial
begin
$dumpfile("ALU.vcd");
$dumpvars();
tb_Src1=0;
tb_Src2=0;
tb_ALU_Control=0;

$display("test case 1 ");
#10
tb_Src1=32'd10;tb_Src2=32'd1;tb_ALU_Control=3'b000;
$display("test AND operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==0)
$display("test is passed");
else
$display("test is failed");

$display("test case 2 ");
#10
tb_Src1=10;tb_Src2=0;tb_ALU_Control=3'b001;
$display("test OR operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==10)
$display("test is passed");
else
$display("test is failed");

$display("test case 3 ");
#10
tb_Src1=10;tb_Src2=15;tb_ALU_Control=3'b010;
$display("test addition operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==25)
$display("test is passed");
else
$display("test is failed");

$display("test case 4 ");
#10
tb_Src1=10;tb_Src2=5;tb_ALU_Control=3'b100;
$display("test subtraction operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==5)
$display("test is passed");
else
$display("test is failed");

$display("test case 5 ");
#10
tb_Src1=10;tb_Src2=2;tb_ALU_Control=3'b101;
$display("test multiplication operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==20)
$display("test is passed");
else
$display("test is failed");

$display("test case 6 ");
#10
tb_Src1=1;tb_Src2=2;tb_ALU_Control=3'b110;
$display("test comparison  operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==1)
$display("test is passed");
else
$display("test is failed");

$display("test case 7 ");
#10
tb_Src1=1;tb_Src2=2;tb_ALU_Control=3'b111;
$display("test no operation time=%0t %0d && %0d =%0d ",$time,tb_Src1,tb_Src2,tb_ALU_Result);
if(tb_ALU_Result==0)
$display("test is passed");
else
$display("test is failed");

#10
$finish;

end


ALU_32bit DUT(
              .Src1(tb_Src1),
              .Src2(tb_Src2),
              .ALU_Control(tb_ALU_Control),
              .ALU_Result(tb_ALU_Result),
              .Zero_Flag(tb_Zero_Flag)
              );
endmodule