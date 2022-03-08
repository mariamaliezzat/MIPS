module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 : begin 
             ALU_OUT=A + B;
			
			 end
 4'b0001 :begin
 ALU_OUT=A - B;

end
 
 4'b0010 :begin
 ALU_OUT=A * B;

end

 4'b0011 :begin
 ALU_OUT=A / B;

end

 4'b0100 :begin
 ALU_OUT=A && B;

end
 4'b0101 :begin
 ALU_OUT=A || B;
//  Logic_Flag=1;
 
end
 4'b0110 :begin
 ALU_OUT=~(A && B);
//  Logic_Flag=1;
end
 4'b0111 :begin
 ALU_OUT=~(A || B);
 // Logic_Flag=1;
end
 4'b1000 :begin
 ALU_OUT=A ^ B;
//  Logic_Flag=1;
end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
//  Logic_Flag=1;
end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
// CMP_Flag=1;
end

 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
// CMP_Flag=1;
end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
// CMP_Flag=1;
end
 4'b1101 :begin
 ALU_OUT=A>>1;
// Shift_Flag=1;
end
 4'b1110 :begin
 ALU_OUT=A<<1;
// Shift_Flag=1;
 end
default: begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule module ALU_16bits(
                  input [15:0] A,
                  input [15:0] B,
				  input [3:0]  ALU_FUN,
				  output reg [15:0] ALU_OUT,
				  output  Arith_Flag,
				  output  Logic_Flag,
				  output  CMP_Flag,
				  output  Shift_Flag
 );
 always@(*)
 begin
 casex(ALU_FUN)
 4'b0000 :begin 
 ALU_OUT=A + B;
	      end
 4'b0001 :begin
 ALU_OUT=A - B;
          end    
 4'b0010 :begin
 ALU_OUT=A * B;
          end
 4'b0011 :begin
 ALU_OUT=A / B;
          end
 4'b0100 :begin
 ALU_OUT=A && B;
          end
 4'b0101 :begin
 ALU_OUT=A || B;
          end
 4'b0110 :begin
 ALU_OUT=~(A && B);
          end
 4'b0111 :begin
 ALU_OUT=~(A || B);
          end
 4'b1000 :begin
 ALU_OUT=A ^ B;
          end
 4'b1001 :begin
 ALU_OUT=~(A ^ B);
          end
 4'b1010 :begin
 if(A==B)
 ALU_OUT=1;
          end
 4'b1011 :begin
 if(A>B)
 ALU_OUT=2;
          end
 4'b1100 :begin
 if(A<B)
 ALU_OUT=3;
          end
 4'b1101 :begin
 ALU_OUT=A>>1;
          end       
 4'b1110 :begin
 ALU_OUT=A<<1;
          end
default:  begin
ALU_OUT=16'b0;
end
endcase
end
assign Arith_Flag=((ALU_FUN==4'b0000)||(ALU_FUN==4'b0001)||(ALU_FUN==4'b0010)||(ALU_FUN==4'b0011));
assign Logic_Flag=((ALU_FUN===4'b01xx)||(ALU_FUN===4'b100x));
assign CMP_Flag=((ALU_FUN==4'b1011)||(ALU_FUN==4'b1010)||(ALU_FUN==4'b1100));
assign Shift_Flag=((ALU_FUN==4'b1101)||(ALU_FUN==4'b1110)); 			   
endmodule 