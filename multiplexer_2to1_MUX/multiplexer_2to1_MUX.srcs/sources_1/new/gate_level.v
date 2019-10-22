`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 12:37:04 AM
// Design Name: 2 to 1 MUX  
// Module Name: gate_level
// Project Name:  
// Target Devices: 
// Tool Versions: 
// Description: 2 to 1 multiplexer at gate level implementation
// 
// Dependencies: non
// 
// Revision: 0.01V
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gate_level( 
    input A, //input 1
    input B, //input 2
    input S, //select line
    output Z //output line
    );
    //logic is output = (input 1 and (not of select)) or (input 2 and select) 
wire W1, W2, W3; //interconnected lines
    // Z = (A & ~S) | (B & S)
not n1(W3, S); //not of Select line is samed in W3 means W3 = ~S
and a1(W1, A, W3); // W1 = A & W3
and a2(W2, B, S); //W2 = B & S
or o1(Z, W1, W2); // Z = W1 | W2
    
endmodule
