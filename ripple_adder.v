`timescale 1ns / 1ps
//add/subtract
module ripple_adder(

  // Declare two input ports,
  input[5:0] x,y,
  input sel, 
  //Declare an output port 
  output c_out,
  output overflow,
  output [5:0] sum
  );


// Declare an internal wire, carry, as a 6-bit vector to store the carry bit between full adders

wire [5:0] c; 

 // Instantiate a full_adder module with inputs and outputs connected as shown:
full_adder fa1(
   .a(x[0]), 
   .b(y[0]^sel), 
   .cin(sel),
   .s(sum[0]),
   .cout(c[0])
   );
    
// The rest instantiates five more full_adder modules with inputs and outputs connected in a similar fashion:
full_adder fa2(
    .a(x[1]), 
    .b(y[1]^sel),
    .cin(c[0]),
    .s(sum[1]),
    .cout(c[1])
    );

full_adder fa3(
    .a(x[2]), 
    .b(y[2]^sel),
    .cin(c[1]),
    .s(sum[2]),
    .cout(c[2])
    );


full_adder fa4(
    .a(x[3]), 
    .b(y[3]^sel),
    .cin(c[2]),
    .s(sum[3]),
    .cout(c[3])
    );
   
full_adder fa5(
    .a(x[4]), 
    .b(y[4]^sel),
    .cin(c[3]),
    .s(sum[4]),
    .cout(c[4])
    );

full_adder fa6(
    .a(x[5]), 
    .b(y[5]^sel),
    .cin(c[4]),
    .s(sum[5]),
    .cout(c_out)
    );
    assign overflow = c[5];  
    
endmodule  
