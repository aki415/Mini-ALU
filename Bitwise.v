//performs the bitwise XOR operation (~^) 
//between the two inputs and assigns the result to the output.
module Bitwise(

input [5:0] a, b,
output [5:0] cn
    );
    assign cn= a~^b;
endmodule
