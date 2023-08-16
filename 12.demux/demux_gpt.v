module demux(output reg A, B, C, D, input in, s1, s2);
  always @* begin
    case({s1, s2})
      2'b00: begin A = in; B = 1'b0; C = 1'b0; D = 1'b0; end
      2'b01: begin B = in; A = 1'b0; C = 1'b0; D = 1'b0; end
      2'b10: begin C = in; A = 1'b0; B = 1'b0; D = 1'b0; end
      2'b11: begin D = in; A = 1'b0; B = 1'b0; C = 1'b0; end
      default: begin A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; end
    endcase
  end
endmodule
