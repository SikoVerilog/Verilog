`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2020 11:18:06 PM
// Design Name: 
// Module Name: I
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


module H5(
    input signed [15:0] X,
    input CLK,
    input Reset,
    output reg signed [31:0] Y
    );
    
    wire signed [15:0]a = 16'b1111101111110000;
    wire signed [15:0]b = 16'b1111110111110000;
    wire signed [15:0]c = 16'b0000010101010000;
    wire signed [15:0]d = 16'b0000011010000000;
    reg signed [15:0]tap[1:5];
    wire signed [31:0]O[1:4];
    integer i;
    always @ (posedge CLK) begin
        if(Reset)begin //setting default values
                for(i=1; i<=5; i=i+1)begin
                    tap[i] <= 'b0;
                end
            end
        else begin
        tap[1] <= X;
        tap[2] <= tap[1];
        tap[3] <= tap[2];
        tap[4] <= tap[3];
        tap[5] <= tap[4];   
        end     
    end
    //assign O[1] = a*X + b*tap[2] + c*tap[3] + d*tap[5];
    mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_dAccdd M1(a, X, O[1]);
    //assign O[1] = a*X; 
    mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_dAccdd M2(b, tap[2], O[2]);
    //assign O[2] = b*tap[2];
    mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_dAccdd M3(c, tap[3], O[3]);
    //assign O[3] = c*tap[3];
    mult_mod_16_AccAccAccAcc_AccAccAccAcc_a8_dAccdd M4(d, tap[5], O[4]);
    //assign O[4] = d*tap[5];
    always @(posedge CLK) begin
        Y = O[1] + O[2] + O[3] + O[4];
    end
endmodule
