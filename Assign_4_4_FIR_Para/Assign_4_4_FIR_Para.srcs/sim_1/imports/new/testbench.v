`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 11:40:17 AM
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
    reg [15:0] X, S, T, U, V, W;
    reg CLK, Reset;
    wire [15:0] Y;
    
    FIR_Para #(16, 16, 16, 5, 80) uut(
        .X(X),
        .CLK(CLK), 
        .Reset(Reset),
        .Y(Y),
        .Cof({W, V, U, T, S}));
        
    integer i;
    initial 
        CLK = 1'b0;
        always 
            #10 CLK = ~CLK;
            
    initial begin
        S = 16'd1; T = 16'd2; U = 16'd3; V = 16'd2; W = 16'd1;
        Reset = 1'b1;
        #20
        Reset = 1'b0;
        for(i=1; i<9; i=i+1) begin
            X = i;
            #20;
        end
        X = i;
        #20
        X = 16'b0;
        #20
        X = 16'b0;
        #20
        X = 16'b0;
        #20
        X = 16'b0;
        #20;
    end
endmodule
