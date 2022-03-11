module Datapath_Unit #(
    parameter WIDTH = 32
) (
    input                           clk,
    input                           rst,
    input       [WIDTH - 1 : 0]     Instr,
    input       [WIDTH - 1 : 0]     ReadData,
    output      [31:0]              PC,
    output      [31:0]              ALU_Result,
    output      [WIDTH - 1 : 0]     WriteData,
    output                          Zero_Flag,
    input                           PCSrc,
    input                           MemtoReg,
    input                           ALUSrc,
    input                           RegDst,
    input                           RegWrite,
    input                           MemWrite,
    input                           jump,
    input           [2:0]           ALU_Control

);

/******pc internal wires***********/
    wire [31:0] PC_in;

/**Register file internal wire************/
    wire [31:0] RD2;
    wire [31:0] Result;
/** Sign extendinternal wire************/
    wire [31:0] SignImm;
/** ALU internal wire************/
    wire [31:0] SrcA;
    wire [31:0] SrcB;
/** Adder internal wire************/
    wire [31:0] PCPlus4 ;
/****** Mux2_1 internal wires ********************/
    wire [4:0] WriteReg;
/****** shift left twice internal wires ***/
    wire [31:0] offset;
/***** ADDER BRANCH INTERNAL WIRE*****/
    wire [31:0] PC_Branch;
/************* Jump MUX ****************/
    wire [31:0] PCJump;
    Program_Counter Pc_mod ( 
                                .clk(clk),
                                .rst(rst),
                                .PC_in(PC_in),
                                .PC(PC)
    );


    Register_File Register_File_mod (
                                .A1(Instr[25:21]),
                                .WD3(Result),
                                .A2(Instr[20:16]),
                                .RD1(SrcA),
                                .A3(WriteReg),
                                .clk(clk),
                                .rst(rst),
                                .WE3(RegWrite),
                                .RD2(RD2)


    );

    assign WriteData = RD2 ;    


    sign_extend sign_extend_mod (
                                .data_in(Instr[15:0]),
                                .SignImm(SignImm)
    );



    
    ALU_32bit ALU_32bit_mod (
                                .Src1(SrcA),
                                .Src2(SrcB),
                                .ALU_Control(ALU_Control),
                                .ALU_Result(ALU_Result),
                                .Zero_Flag(Zero_Flag)                  
                                
    );



    Adder Adder_mod (
                            .A(PC),
                            .B(3'b100),
                            .C(PCPlus4)
    ) ;

   
    Mux2_1 #(.WIDTH(32)) MuxALU_mod (
                            .In1(RD2),
                            .In2(SignImm),
                            .sel(ALUSrc),
                            .out(SrcB)
    );

    Mux2_1 #(.WIDTH(32)) MuxRegister_mod (
                            .In1(Instr[20:16]),
                            .In2(Instr[15:11]),
                            .sel(RegDst),
                            .out(WriteReg)
    );


    shift_left_twice #(.WIDTH(32)) shift_left_twice_mod (
                                                .in(SignImm),
                                                .out(offset)
    );



    Adder Adder_branch (
                            .A(offset),
                            .B(PCPlus4),
                            .C(PC_Branch)
    );
   
    Mux2_1 #(.WIDTH(32)) MuxPC_mod (
                            .In1(PCPlus4),
                            .In2(PC_Branch),
                            .sel(PCSrc),
                            .out(PC_in)
    );

   
    Mux2_1 #(.WIDTH(32)) MuxMemory_mod (
                            .In1(Instr[20:16]),
                            .In2(Instr[15:11]),
                            .sel(MemtoReg),
                            .out(Result)
    );
    
    assign PCJump = {PCPlus4[31:28],PCJump};
    shift_left_twice #(.WIDTH(28)) shift_left_twice_jump_mod (
                                                .in(Instr[25:0]),
                                                .out(PCJump)
    );
    
endmodule