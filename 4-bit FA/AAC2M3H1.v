////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//               Application Assignment Problem 5 Module 3 Course 2           //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//
// 
// @file AAC2M3H1.v
// @brief Application Assignment 2-007 4-bit full adder
// @version: 1.0 
// Date of current revision:  @date 2019-07-01  
// Target FPGA: [Intel Altera MAX10] 
// Tools used: [Quartus Prime 16.1 or Sigasi] for editing and/or synthesis 
//             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//             [Quartus Prime 16.1]  for place and route if applied
//             
//  Functional Description:  This file contains the Verilog which describes the 
//               FPGA implementation of 4-bit adder with carry. The inputs are 2 
//               3-bit vectors A and B, and a scalar carry in Cin.  Outputs are
//               Sum and Cout.  
//
//  Hierarchy:  There is only one level in this simple design.
//        
//  Designed by:  @author [your name] 
//                [Organization]
//                [email] 
//
//      Copyright (c) 2019 by Tim Scherr
//
// Redistribution, modification or use of this software in source or binary
// forms is permitted as long as the files maintain this copyright. Users are
// permitted to modify this and use it to learn about the field of HDl code.
// Tim Scherr and the University of Colorado are not liable for any misuse
// of this material.
//////////////////////////////////////////////////////////////////////////////
// 
  	                                            		

module FullAdd4( A,B,Cin,Sum,Cout);                	
    input [3:0] A, B;
    input Cin; 			
    output [3:0] Sum;
    output Cout;

                   	          	
// student code here
  assign Sum[0] = A[0] ^ B[0] ^ Cin;
  assign Cout = (A[0] & B[0]) | (A[0] & Cin) | (B[0] & Cin);

  assign Sum[1] = (A[1] ^ B[1]) ^ Cout;
  assign Cout = (A[1] & B[1]) | ((A[1] ^ B[1]) & Cout) | (Cout & Cin);

  assign Sum[2] = (A[2] ^ B[2]) ^ Cout;
  assign Cout = (A[2] & B[2]) | ((A[2] ^ B[2]) & Cout) | (Cout & Cin);

  assign Sum[3] = (A[3] ^ B[3]) ^ Cout;
  assign Cout = (A[3] & B[3]) | ((A[3] ^ B[3]) & Cout) | (Cout & Cin);
endmodule // FA 




    