`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 10:44:17 AM
// Design Name: 
// Module Name: FIR_filter
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


module FIR_filter(
    input signed [9:0] X,//input
    input signed [7:0] a,
    input signed [7:0] b,
    input signed [7:0] c,
    input signed [7:0] d,
    input CLK,//Clock
    input Reset,//Reset
    output reg signed [17:0] Y//Output
    );
    reg [9:0] Xn [0:4]; //make shift register
    integer i;
    always @ (posedge CLK)begin//make clock
        if(Reset) begin//define the reset value
            for(i=0; i<4; i=i+1)begin
                Xn[i] = 'b0;//default value
            end
        end
        else begin
            Xn[0] <= X;//shifting
            for(i=1; i<5; i=i+1)begin
                Xn[i] <= Xn[i-1];
            end
            Y = X*a + Xn[1]*b + Xn[2]*c + Xn[4]*d;
			//multiplying cofficent to register value to make output
        end
    end
endmodule
