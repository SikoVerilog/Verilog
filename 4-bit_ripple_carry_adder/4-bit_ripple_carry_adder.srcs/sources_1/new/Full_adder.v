`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 11:51:02 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
    input A,
    input B,
    input C_in,
    output Sum,
    output C_out
    );
   
    //devide in 2 half one is A and B and secend half take sum of first half and c_in which make final sum
    //and first half take A and B create one carry ans secend half take sum of first half and c_in and genrate secend half
    //and of carry form first half and carry from secend half make final carry 
    
    wire S1, C1, C2; //interconnection wires for
    //S1 for sum of first half
    //c1 for cary of first half
    //c2 for carry of secend half
        
    xor x1(S1, A, B);
    and a1(C1, A, B);
    //one half take A and B and genrate sum in S1 and carry in C1
    xor x2(Sum, S1, C_in);
    and a2(C2, S1, C_in);
    //secend half take sum of first half S1 and C_in and genrate final Sum and carry in C2
    or O1(C_out, C1, C2);
    //final carry is and of carry of first half and carry of secend half
endmodule
