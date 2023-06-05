`include "../9.half_adder/half_adder.v"
module full(
  output reg S,
  output reg C,
  input A,
  input B,
  input Cin
);
  wire w1, w2, w3;

  half HA1(S1, C1, A, B);
  half HA2(S2, C2, S1, Cin);
    
  always @* begin
    S = S2;
    C = C1 | C2;
  end
endmodule
