module sign_extend(
                    input [15:0] data_in,
                    output reg [31:0] SignImm
);
always@(*)
begin

SignImm={{16{data_in[15]}},data_in};


end

endmodule