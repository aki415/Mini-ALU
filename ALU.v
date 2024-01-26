`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 16:51:27
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
  input [5:0] A, B, 
  output reg [5:0] X,  
  input [2:0] fxn
   );
        
wire[5:0] alpha, beta, Neg_A,Neg_B, A_LESS_B, A_XNOR_B, A_PLUS_B, A_MIN_B; 
wire c;
wire flow; 
        
    ripple_adder betamain (
        .x(6'b00), 
        .y(B), 
        .sel(1'b0), 
        .sum(beta)); 
        
           
    ripple_adder alphamain 
        (.x(A), 
         .y(6'b00), 
         .sel(1'b0), 
         .sum(alpha)); 
   

    lth6 lesscompare (
     .a0(A), 
     .b0(B), 
     .out(A_LESS_B));
     
     Bitwise bitn (
       .a(A), 
       .b(B), 
       .cn(A_XNOR_B)); 
    
    ripple_adder adder (
     .x(A), 
     .y(B), 
     .sel(1'b0), 
     .overflow(flow), 
     .c_out(c), 
     .sum(A_PLUS_B)
     );

    ripple_adder subtractor (
      .x(A), .y(B), 
      .sel(1'b1), 
      .overflow(flow), 
      .c_out(c), 
      .sum(A_MIN_B));          
        
always @(*)
begin
case(fxn)
3'b000, 3'b001: X = (fxn == 3'b000) ? alpha : beta;
3'b010, 3'b011: X = (fxn == 3'b010) ? Neg_A : Neg_B;
3'b100: X = A_LESS_B;
3'b101: X = A_XNOR_B;
3'b110: X = A_PLUS_B;
3'b111: X = A_MIN_B;
endcase
end             
        
endmodule
