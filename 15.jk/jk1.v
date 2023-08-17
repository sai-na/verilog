module jk_flip_flop_tb;
  reg J, K, clock, clear;
  wire Q;

  // Instantiate the jk_flip_flop module
  jk_flip_flop i (Q, J, K, clock, clear);

  // Initialize inputs
  initial begin
    J = 0; K = 0; clock = 0; clear = 1;
    #1 clear = 0;
    #1 J = 1; K = 0; // Set J = 1 to set Q to 1
    #1 J = 0; K = 1; // Set K = 1 to set Q to 0
    #1 J = 1; K = 1; // Toggle Q
    #1 J = 0; K = 0; // No change to Q
    #1 J = 1; K = 0; // Toggle Q
  end

  // Display and monitor the values
  initial begin
    $display("J-K Flip-Flop Test:");
    $monitor("%t | J = %b | K = %b | Q = %b", $time, J, K, Q);
    $dumpfile("jk_flip_flop.vcd");
    $dumpvars();
    #10 $finish; // Stop simulation after a delay
  end

endmodule
