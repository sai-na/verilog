// Include the half_adder_gpt.v module
include "half_adder_gpt.v"

// Define the testbench module
module half_adder_tb;

  // Declare input signals A and B, and output signals S and C
  reg A, B;
  wire S, C;

  // Instantiate the half_adder_gpt module
  half hf(S, C, A, B);

  // Initialize inputs and observe outputs
  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
  end

  // Display and monitor the values
  initial begin
    $display("Half Adder Truth Table");
    $monitor("%t |A = %d|B = %d|S = %d|C = %d", $time, A, B, S, C);
  end

endmodule
