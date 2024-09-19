module binary_adder_subtractor_testbench;
    reg [3:0] A;
    reg [3:0] B;
    reg a_s, Cin;
    wire C4; 
    wire [3:0] Out;
    
    
    binary_adder_subtractor dut(A, B, Cin, a_s, Out, C4);
    
    initial begin
            //$monitor("$time   A=%b B=%b C/B=%b  Sum=%b  Carry=%b", A, B, Cin, Out, C4);
            Cin = 0;
            #10
            A = 4'b0110;
            B = 4'b1100;
            a_s = 1;
            #10
            A = 4'b1110;
            B = 4'b1000;
            a_s = 1;
            #10
            $finish();
    end
endmodule
