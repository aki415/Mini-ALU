`timescale 1ns / 1ps
// performs 2's complement negation of a 6-bit input number
module complement2neg(
        input [5:0] p,
        output [5:0] t
    );  
  // Declares an internal wire named neg_an which is a 6-bit vector.
    wire [5:0] neg_an; 
    assign invert = ~p;  
    //instantiates a ripple-carry adder named neg1
    ripple_adder neg1(
      .x(neg_an), 
      .y(6'b000001), 
      .sel(1'b0), 
      .sum(t)
      ); 
    endmodule
    