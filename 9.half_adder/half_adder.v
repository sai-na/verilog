module half(
  output reg S,
  output reg C,
  input A,
  input B
);
  always @* begin
    if (A != B) begin
      S = 1;
    end
    else begin
      S = 0;
    end
    
    if (A == 1 && B == 1) begin
      C = 1;
    end
    else begin
      C = 0;
    end
  end
endmodule
