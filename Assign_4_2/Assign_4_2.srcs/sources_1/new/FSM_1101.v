`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2019 08:17:14 PM
// Design Name: 
// Module Name: FSM_1101
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


module FSM_1101(
    input [3:0] X,
    input [3:0] Y,
    input CLK,
    input Reset,
    input Data_in,
    output reg [3:0] Data_out
    );
    
    reg [1:0] Current = State0, Next = State0;
    parameter State0 = 2'b00,
              State1 = 2'b01,
              State2 = 2'b10,
              State3 = 2'b11;
    //State register 
    always @ (posedge CLK) begin
        if(Reset) begin
            Current <= State0;
        end
        else Current <= Next;
    end
    
    //State Transition
    always @ (Current, Data_in)begin
        case(Current)
            State0: Next = Data_in? State1: State0;
            State1: Next = Data_in? State2: State0;
            State2: Next = Data_in? State2: State3;
            State3: Next = Data_in? State1: State0;
        endcase
    end
    
    //Output logic
    always @ (Current, Data_in) begin
        case(Current)
            State0: Data_out = 4'd0;
            State1: Data_out = 4'd0;
            State2: Data_out = 4'd0;
            State3: Data_out = Data_in? X+Y: 4'd0;
        endcase
    end
    
endmodule
