module Control_Unit (
    input           [31:0]      Instr,
    input                       Zero_Flag,
    output wire                 PCSrc,
    output reg                  MemtoReg,
    output reg                  ALUSrc,
    output reg                  RegDst,
    output reg                  RegWrite,
    output reg                  MemWrite,
    output reg                  jump,
    output reg      [2:0]       ALU_Control
);

    reg              Branch;
    reg      [1:0]   ALUOP;
    wire     [5:0]   Funct;
    wire     [5:0]   Opcode;   

    assign  Funct           = Instr[5:0];
    assign  Opcode          = Instr[31:26];
    
    parameter loadWord      = 6'b10_0011;
    parameter storeWord     = 6'b10_1011;
    parameter r_type        = 6'b00_0000;
    parameter addImmediate  = 6'b00_1000;
    parameter branchIfEqual = 6'b00_0100;
    parameter jump_inst     = 6'b00_0010;

    parameter add = 6'b10_0000 ;
    parameter sub = 6'b10_0010 ;
    parameter slt = 6'b10_1010 ;
    parameter mul = 6'b01_1100 ;
/******************Main Decoder******************/
    always @(*) begin
        case (Opcode)
            loadWord: begin
                jump        = 0;
                ALUOP       = 2'b00; 
                MemWrite    = 0;
                RegWrite    = 1;
                RegDst      = 0;
                ALUSrc      = 1;
                MemtoReg    = 1;
                Branch      = 0;
            end
            storeWord: begin
                jump        = 0;
                ALUOP       = 2'b00; 
                MemWrite    = 1;
                RegWrite    = 0;
                RegDst      = 0;
                ALUSrc      = 1;
                MemtoReg    = 1;
                Branch      = 0;
            end 
            r_type: begin
                jump        = 0;
                ALUOP       = 2'b10; 
                MemWrite    = 0;
                RegWrite    = 1;
                RegDst      = 1;
                ALUSrc      = 0;
                MemtoReg    = 0;
                Branch      = 0;
            end
            addImmediate:   begin
                jump        = 0;
                ALUOP       = 2'b00; 
                MemWrite    = 0;
                RegWrite    = 1;
                RegDst      = 0;
                ALUSrc      = 1;
                MemtoReg    = 0;
                Branch      = 0;
            end
            branchIfEqual:  begin
                jump        = 0;
                ALUOP       = 2'b01; 
                MemWrite    = 0;
                RegWrite    = 0;
                RegDst      = 0;
                ALUSrc      = 0;
                MemtoReg    = 0;
                Branch      = 1;
            end
            jump_inst:  begin
                jump        = 1;
                ALUOP       = 2'b00; 
                MemWrite    = 0;
                RegWrite    = 0;
                RegDst      = 0;
                ALUSrc      = 0;
                MemtoReg    = 0;
                Branch      = 0;
            end
            default:    begin
                jump        = 0;
                ALUOP       = 2'b00; 
                MemWrite    = 0;
                RegWrite    = 0;
                RegDst      = 0;
                ALUSrc      = 0;
                MemtoReg    = 0;
                Branch      = 0;
            end
             
        endcase
        
    end

    assign PCSrc = Branch & Zero_Flag;
/******************ALU Decoder******************/
    always @(*) begin
        case (ALUOP)
            00: begin
                ALU_Control = 3'b010; 
            end
            01: begin
                ALU_Control = 3'b100; 
            end
            10: begin
                case (Funct)
                    add: begin
                        ALU_Control =3'b010;
                    end 
                    sub: begin
                        ALU_Control =3'b100;
                    end
                    slt: begin
                        ALU_Control =3'b110;
                    end
                    mul: begin
                        ALU_Control =3'b101;
                    end
                    default: begin
                        ALU_Control =3'b010;
                    end
                endcase      
            end    
            default: begin
                ALU_Control =3'b010;
            end
        endcase
    end

endmodule