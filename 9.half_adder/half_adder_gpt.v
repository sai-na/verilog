module half (
  output reg S,
  output reg C,
  input A,
  input B
);

  always @* begin
    S = A ^ B;     // Sum = XOR of inputs
    C = A & B;     // Carry = AND of inputs
  end

endmodule
