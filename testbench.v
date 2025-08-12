4: Chương trình testbench
module TB_mux41;

	// Inputs
	reg [3:0] I;
	reg [1:0] S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	MUX_4TO1 uut (
		.I(I), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#10;
      I[0]= 0; I[1] =1; I[2]=1; I[3]=1;
		// Add stimulus here
		S[0] = 0; S[1] = 0; // Chọn đầu vào D0
		#10; // Thời gian trễ

		S[0] = 0; S[1] = 1; // Chọn đầu vào D1
		#10;

		S[0] = 1; S[1] = 0; // Chọn đầu vào D2
		#10;

		S[0] = 1; S[1] = 1; // Chọn đầu vào D3
		#10;

    // Kết thúc mô phỏng
    $finish;
	end
      
endmodule

