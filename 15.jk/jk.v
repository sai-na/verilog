module jk_flip_flop(
  output reg Q,
  input J, K, clock, clear
);
  reg Q_n;

  always @(posedge clock or posedge clear) begin
    if (clear)
      Q_n <= 1'b0;
    else if (J && K)
      Q_n <= ~Q_n;
    else if (J)
      Q_n <= 1'b1;
    else if (K)
      Q_n <= 1'b0;
  end

  assign Q = ~Q_n;

endmodule
