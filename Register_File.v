module Register_File (
                       
                       input [4:0] A1,
                       output [31:0] RD1,
                       input [4:0] A2,
                       output [31:0] RD2,
                       input [4:0] A3,
                       input [31:0] WD3,
                       input        WE3,
                       input clk,
                       input rst
                       
);

reg [31:0] register_file [0:31];
integer i; 

always@(posedge clk, negedge rst)
    begin
        if(!rst)
            begin
                for(i=0;i<32;i=i+1)
                    begin
                        register_file[i] <=0;
                    end
            end
        else
            begin
                if(WE3==1)
                    begin
                        register_file[A3] <= WD3;
                    end
            end

    end


assign RD1  = register_file[A1];
assign RD2  = register_file[A2];




endmodule