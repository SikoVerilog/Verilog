`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2019 12:45:34 AM
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
    reg [3:0]A;// first operent
    reg [3:0]B;// secend operent
    reg C_in; //carry_in 
    wire [3:0]Sum;//answer
    wire C_out;// overflow or carry out
    
    Adder_4bit uut(
        .A(A),
        .B(B),
        .C_in(C_in),
        .Sum(Sum),
        .C_out(C_out));//instentiation of 4bit ripple carry adder

    initial begin// simulation bigen
        A = 4'h0;
        B = 4'h3;
        C_in = 1'b0;//1st case
        #100//100 unit delay while i unit = 1ns
        
        A = 4'h8;
        B = 4'h0;
        C_in = 1'b1;//2nd case
        #100
        
        A = 4'h2;
        B = 4'h3;
        C_in = 1'b0;//3rd case
        #100
        
        A = 4'h5;
        B = 4'h3;
        C_in = 1'b1;//4th case
        #100
        
        A = 4'h7;
        B = 4'h6;
        C_in = 1'b0;//5th case
        #100
        
        A = 4'h9;
        B = 4'h5;
        C_in = 1'b1;//6th case
        #100
        
        A = 4'hA;
        B = 4'hB;
        C_in = 1'b0;//7th case
        #100
        
        A = 4'hC;
        B = 4'hD;
        C_in = 1'b1;//8th case
        #100
        
        A = 4'h1;
        B = 4'h2;
        C_in = 1'b0;//9th case
        #100
        
        A = 4'h6;
        B = 4'h6;
        C_in = 1'b1;//10th case
        #100;
    end
endmodule//end of simulation
