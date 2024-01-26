//1-bit logic circuit that determines whether the value 
//of input i0 is less than the value of input i1
`timescale 1ns / 1ps

module alessb(
  
    input wire i0, i1, 
    output wire a_lth_b 
    );
    
    assign a_lth_b = ~i0 & i1;
 
endmodule