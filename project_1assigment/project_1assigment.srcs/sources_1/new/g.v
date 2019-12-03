module DFF
        (input Clk,
        input [17:0] D,
        output reg [17:0]   Q
        );
    
    always@ (posedge Clk)
        Q = D;
    
endmodule

module fir_4tap(
        input Clk,
        input signed [9:0] Xin,
        input signed [7:0] H0,H1,H2,H3,H4,H5,
        output reg signed [17:0] Yout
        );
    
    //Internal variables.
    
    wire signed   [17:0] MCM0,MCM1,MCM2,MCM3,MCM4,MCM5,add_out1,add_out2,add_out3,add_out4,add_out5,add_out6;
    wire signed     [17:0] Q1,Q2,Q3,Q4,Q5,Q6;

//Multiple constant multiplications.
    assign MCM5 = H5*Xin;
    assign MCM4 = H4*Xin;
    assign MCM3 = H3*Xin;
    assign MCM2 = H2*Xin;
    assign MCM1 = H1*Xin;
    assign MCM0 = H0*Xin;

//adders
    assign add_out1 = Q1 + MCM5;
    assign add_out2 = Q2 + MCM4;
    assign add_out3 = Q3 + MCM3;
    assign add_out4 = Q4 + MCM2;
    assign add_out5 = Q5 + MCM1;
    assign add_out6 = Q6 + MCM0;    

//flipflop instantiations (for introducing a delay).
    DFF dff1 (.Clk(Clk),.D(MCM5),.Q(Q1));
    DFF dff2 (.Clk(Clk),.D(add_out1),.Q(Q2));
    DFF dff3 (.Clk(Clk),.D(add_out2),.Q(Q3));
    DFF dff4 (.Clk(Clk),.D(add_out3),.Q(Q4));
    DFF dff5 (.Clk(Clk),.D(add_out4),.Q(Q5));
    DFF dff6 (.Clk(Clk),.D(add_out5),.Q(Q6));
//Assign the last adder output to final output.
    always@ (posedge Clk)
        Yout <= add_out6;

endmodule

