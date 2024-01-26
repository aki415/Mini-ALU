
//sets the time scale for the module
`timescale 1ns / 1ps
//declares the full_adder module and its inputs and outputs
module full_adder(a, b, cin, s, cout);

  input wire a, b, cin;
  

  output wire s, cout;

  // declare the output wires s and cout
  assign s = cin ^ a ^ b; 
  //Computes the carry-out cout by performing bitwise AND and OR 
  //operations on the inputs a, b, and cin
  assign cout = (b & cin) | (a & cin) | (a & b); 
                                               


endmodule