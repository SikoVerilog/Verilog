`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2019 12:34:45 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input In,
    input CLK,
    input Reset,
    output reg Out
    );
    
    reg [1:0] Current, Next;
    
    parameter State0 = 2'd0,
              State1 = 2'd1,
              State2 = 2'd2,
              State3 = 2'd3;
    //Sate register
    always @ (posedge CLK) begin
        if(Reset) Current <= State0;
        else Current <= Next;
    end
    //output
    always @ (Current, In)begin
        case(Current)
            State0: Out = 1'b0;
            State1: Out = 1'b0;
            State2: Out = 1'b0;
            State3: begin
                if(In)begin
                    Out = 1'b0;
                end
                else begin
                    Out = 1'b1;
                end
            end
        endcase;
    end
    //state transition
    
    always @ (Current,In)begin
        case(Current)
            State0: Next <= In? State1: State0;
            State1: Next <= In? State2: State1;
            State2: Next <= In? State3: State2;
            State3: Next <= In? State0: State3;
        endcase
    end
endmodule
