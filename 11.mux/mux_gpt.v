module Mux(output reg q, input A, B, C, D, sel1, sel2);
  always @* begin
    case({sel1, sel2})
      2'b00: q = A;
      2'b01: q = B;
      2'b10: q = C;
      2'b11: q = D;
      default: q = 1'bx; // Unspecified case
    endcase
  end
endmodule
