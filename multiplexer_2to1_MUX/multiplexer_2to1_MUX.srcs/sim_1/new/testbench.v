`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 10:33:23 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

    reg A, B, S; //inputs for 2 to 1 bit multiplexer
    wire Z; // output for 2 to 1 bit multiplexer
    
    gate_level uut(
        .A(A),
        .B(B),
        .S(S),
        .Z(Z));// instansciation of design as 2001 style
        
    initial begin// simulation starts form there
        A=0;
        B=0;
        S=0; // first case
            #100// delay for 100 units of 1ns
        A=0;
        B=0;
        S=1; //2nd case
            #100
        A=0;
        B=1;
        S=0; //3rd case
            #100
        A=0;
        B=1;
        S=1; //4th case
            #100
        A=1;
        B=0;
        S=0; //5th case
            #100
        A=1;
        B=0;
        S=1; //6th case
            #100
        A=1;
        B=1;
        S=0; //7th case
            #100
        A=1;
        B=1;
        S=1;// 8th case
            #100;
            
    end //end of the simulation

endmodule
