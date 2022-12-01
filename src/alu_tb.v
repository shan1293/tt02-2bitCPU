`timescale 1ns / 1ps  

module alu_tb;
//Inputs
 reg[1:0] A,B;
 reg[3:0] opcode;

//Outputs
 wire[7:0] ALU_Out;
 
 integer i;
 alu test_unit(
            .A(A),
            .B(B),                  
            .opcode(opcode),
            .ALU_Out(ALU_Out)
     );
    initial begin
 
      A = 2'b10;
      B = 2'b01;
      opcode = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
      #10;
       opcode = opcode + 8'h01;
      end;
      
      A = 2'b11;
      B = 2'b11;
      opcode = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
      #10;
       opcode = opcode + 8'h01;
      end;
      
    end
endmodule