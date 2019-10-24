`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2019 10:16:22 AM
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
    reg CLK, Reset, Data_in;
    reg [3:0] X, Y;
    wire [3:0]Data_out;
    
    FSM_1101 uut(
        .X(X),
        .Y(Y),
        .CLK(CLK),
        .Reset(Reset),
        .Data_in(Data_in),
        .Data_out(Data_out)
        );
    integer i, temp = 36'b000101100010101111101100111111101100;
                           // 001101111111001101111101010001101000;
    initial
        CLK = 1'b0;
        always
            #5 CLK = ~CLK;
            
    
    initial begin
        X = 4'b0011; Y = 4'b0001; Reset = 1'b1;
        for(i=0; i<36; i=i+1)begin
            Data_in = temp[i];
            #10 Reset = 1'b0;
        end
        
        X = 4'b1011; Y = 4'b1101; Reset = 1'b1;
        for(i=0; i<36; i=i+1)begin
            Data_in = temp[i];
            #10 Reset = 1'b0;
        end
    end

endmodule
