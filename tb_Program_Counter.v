module tb_Program_Counter ();
reg tb_clk;
reg tb_rst_b;
wire tb_PC;

initial

begin
$dumpfile("Program_Counter.vcd");
$dumpvars();
tb_clk =0;
tb_rst_b =1;

$display("test case 1 ");
#2
tb_rst_b=0;
#5
$display("test Reset time=%0t  ",$time);
if(tb_PC==0)
$display("test is passed");
else
$display("test is failed");

$display("test case 2 ");
#1
tb_rst_b=1'b1;
#9
$display("test Reset time=%0t ,pc %0d ",$time,tb_PC);
if(tb_PC==(tb_PC+4))
$display("test is passed");
else
$display("test is failed");



end    







always #5 tb_clk=~tb_clk;
Program_Counter DUT (
                     .clk(tb_clk),
                     .rst_b(tb_rst_b),
                     .PC(tb_PC)
);


endmodule