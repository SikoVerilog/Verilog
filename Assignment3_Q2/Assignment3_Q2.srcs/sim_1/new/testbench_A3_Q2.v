`timescale 1ns / 1ps
`define CYCLE 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2019 12:13:03 PM
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


module testbench();
    reg [3:0] A, B, C, D;
    reg Int, CLK;
    reg [5:0] INS;
    wire [3:0] Result;
    
    Processor uut(.A(A), .B(B), .C(C), .D(D), .Int(Int), .INS(INS), .CLK(CLK), .Result(Result));
    
    initial
        CLK = 1'b0;
        always
            #(`CYCLE) CLK = ~CLK;
            
    initial begin
        A = 4'b1001; B = 4'b1110; C = 4'b0111; D = 4'b1011;
        Int = 1'b0;
        INS = 6'b001011;
        #100
        Int = 1'b1;
        #20
        Int = 1'b0;
        INS = 6'b110001;
        #100
        INS = 6'b100110;
        #100;
    end

endmodule
