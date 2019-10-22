`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 04:48:45 AM
// Design Name: 
// Module Name: test_bench
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


module test_bench;

    reg [1:0]A, B;// bus inputs for 2 bit 2 to 1 muliplexer
    reg S; // selelct line for the MUX
    wire [1:0]Z; // output of the design

    MUX_2_bit_2_to_1 uut(
        .A(A),
        .B(B),
        .S(S),
        .Z(Z));// instentiation fo our design 
    
    initial begin //simulation start withtest cases
        A = 2'b00;
        B = 2'b11;
        S = 0; //case 1 in which bus one is slelected 
            #100 // 100 unit delay when 1 unit = 1ns
        A = 2'b01;
        B = 2'b10;
        S = 0; //2nd case
            #100
        A = 2'b10;
        B = 2'b01;
        S = 0;// 3rd case
            #100
        A = 2'b11;
        B = 2'b00;
        S = 0;//4th case
            #100
        A = 2'b11;
        B = 2'b00;
        S = 1;//5th case
            #100
        A = 2'b10;
        B = 2'b01;
        S = 1;//6th case
            #100
        A = 2'b01;
        B = 2'b10;
        S = 1;//7th case
            #100
        A = 2'b00;
        B = 2'b11;
        S = 1;//8th case
            #100;
    end
endmodule// end of the simulation 
