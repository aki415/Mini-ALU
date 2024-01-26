`timescale 1 ns/1 ps
module ALU_testbench(
       );
   reg[5:0] A, B; 
   reg[2:0] fxn;
   wire[5:0] X;
  
  ALU uut (.A(A), .B(B) , .fxn(fxn), .X(X)); 
    
initial
begin
   
//test vector 1
A=6'b011001;
B=6'b101010;
fxn = 3'b000;
# 100;
//test vector 2
A=6'b111100;
B=6'd15;
fxn = 3'b001;
# 100;
//test vector 3
A=6'd021;
B=6'b001010;     
fxn = 3'b110;
# 100;

//test vector 4
A=6'b000101;
B='b001100;

fxn = 3'b100;
# 100;
//test vector 5
A=6'd60;
B=6'd53;
fxn = 3'b101;
# 100;
//test vector 6
A=6'b010010;
B=6'b000011;
fxn = 3'b110;
# 100;
   
 $stop;
   end 
endmodule

