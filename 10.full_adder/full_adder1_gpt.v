// Include the half_adder.v module
include "../9.half_adder/half_adder_gpt.v"

// Define the full adder module
module full (
  output reg S,
  output reg C,
  input A,
  input B,
  input Cin
);
  
  // Instantiate two half adders
  half HA1(S1, C1, A, B);
  half HA2(S2, C2, S1, Cin);

  // Logic to compute sum and carry
  always @* begin
    S = S2;          // Sum output is the sum from the second half adder
    C = C1 | C2;     // Carry output is the OR of the carries from both half adders
  end

endmodule
