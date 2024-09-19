`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2024 03:10:22 PM
// Design Name: 
// Module Name: binary_adder_subtractor
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


module binary_adder_subtractor(
    input [3:0] A,
    input [3:0] B,
    input a_s,
    input Cin,
    output [3:0] Out,
    //output [3:0] Carry_Borrow
    output C4
    );
    wire C1, C2, C3;
    wire [3:0] Z; //reg [3:0] Z;
  
    //when as = 0 then add
    // when as=1 then sub
    
    xor G1 (Z[0], B[0], a_s);
    xor G2 (Z[1], B[1], a_s);
    xor G3 (Z[2], B[2], a_s);
    xor G4 (Z[3], B[3], a_s);
        
    fullAdder fa0(A[0], Z[0], Cin, Out[0], C1);
    fullAdder fa1(A[1], Z[1], C1, Out[1], C2);
    fullAdder fa2(A[2], Z[2], C2, Out[2], C3);
    fullAdder fa3(A[3], Z[3], C3, Out[3], C4);  
    
    
endmodule
//module rca(
//    input 
//    );

//endmodule

module fullAdder (
    input A,
    input B,
    input C,
    output Sum, 
    output Carry);
    
    assign Sum = A^B^C;
    assign Carry= (A&B)|(B&C)|(C&A);
endmodule