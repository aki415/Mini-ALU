`timescale 1ns / 1ps
//compares two 6-bit input numbers a0 and b0 and outputs a 6-bit number out 
//representing the result of the comparison of a<b
module lth6 (
    input [5:0] a0, 
    input [5:0] b0, 
    output [5:0] out   
);

alessb lth1(.i0(a0[0]),.i1(b0[0]),.a_lth_b(out[0]));

alessb lth2(.i0(a0[1]),.i1(b0[1]),.a_lth_b(out[1]));

alessb lth3(.i0(a0[2]),.i1(b0[2]),.a_lth_b(out[2]));

alessb lth4(.i0(a0[3]),.i1(b0[3]),.a_lth_b(out[3]));

alessb lth5(.i0(a0[4]),.i1(b0[4]),.a_lth_b(out[4]));

alessb lth6(.i0(a0[5]),.i1(b0[5]),.a_lth_b(out[5]));

endmodule 
