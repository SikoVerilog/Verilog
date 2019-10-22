`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 12:04:41 PM
// Design Name: 
// Module Name: MUX_Selection
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




/*module bus_mux ( selects, data_in, data_out );
parameter bus_count = 16;                   // number of input buses
parameter mux_width = 8;                    // bit width of data buses
input  [bus_count-1:0]           selects;   // one-hot select signals
input  [mux_width*bus_count-1:0] data_in;   // concatenated input buses
output [mux_width-1:0]           data_out;  // output data bus
wire [bus_count-1:0]             selects;   // one-hot select signals
wire [mux_width*bus_count-1:0]   data_in;   // concatenated input buses
reg  [mux_width-1:0]             data_out;  // output data bus

        integer i, j;
       // data_out = 'bX;
       always @ (*) begin
        for (i = 0; i < bus_count; i = i + 1)
                if (selects[i]) begin
                        for (j = 0; j < mux_width; j = j + 1)
                                data_out[j] = data_in[mux_width*i + j];
                end  // if
        
        end  // always
endmodule

*/


module MUX #(parameter data_length = 8, parameter select = 3, parameter number_of_input = 6)(
    input [data_length*number_of_input - 1 : 0]IN,
    input [select-1 : 0] sel,
    output reg [data_length-1 : 0]out);
    integer i,j;
    always @ (*) begin
        for(i = 0; i<number_of_input; i=i+1)begin
           if(sel==i)
               for(j=0; j<data_length; j=j+1)
               out[j] = IN[data_length*i+j];
        end
    end

endmodule

/*
module  MUX_4_to_1 #(parameter Width = 1) (
    input [Width : 0]A,
    input [Width : 0]B,
    input [Width : 0]C,
    input [Width : 0]D,
    input [1 : 0] Sel,
    output reg [Width : 0] OP
    );
    always @(*) begin
        case(Sel)
        2'b00: OP = A;
        2'b01: OP = B;
        2'b10: OP = C;
        2'b11: OP = D;
        endcase
    end
    
endmodule
*/