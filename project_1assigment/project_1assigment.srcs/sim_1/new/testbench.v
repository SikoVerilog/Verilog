`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2019 01:42:19 PM
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


module tb();
    reg Clk;
    reg signed [7:0] H0,H1,H2,H3,H4,H5;
    reg signed [9:0] Xin;

    // Outputs
    wire signed [17:0] Yout;
    integer i,file,file1;
    // Instantiate the Unit Under Test (UUT)
    fir_4tap uut (
        .Clk(Clk),
        .H0(H0),.H1(H1),.H2(H2),.H3(H3),.H4(H4),.H5(H5),
        .Xin(Xin), 
        .Yout(Yout)
    );
    
    //Generate a clock with 10 ns clock period.
    initial Clk = 0;
    always #5 Clk =~Clk;
    
    initial begin
             file = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Matlab work/input.txt","r");
            
            $fscanf(file,"%b",H0);
            $fscanf(file,"%b",H1);
            $fscanf(file,"%b",H2);
            $fscanf(file,"%b",H3);
            $fscanf(file,"%b",H4);
            $fscanf(file,"%b",H5);
            //sequence genration
            for(i=0; i<10; i=i+1) begin
                $fscanf(file,"%b",Xin);
                //$fdisplay(file1,"%b",Yout);
                #20;
                
            end
            $fclose(file);
            
    end
    always @(*)begin
        file1 = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Matlab work/vivado_output.txt","a");
        $fdisplay(file1,"%b",Yout);
        $fclose(file1);
    end
endmodule
