// Include the demux.v module
`include "demux_gpt.v"

// Define the testbench module
module demuxtest;
reg in, s1, s2;
wire A, B, C, D;

// Instantiate the Demux module
demux i (A, B, C, D, in, s1, s2);

// Initialize inputs
initial begin
  in = 1; s1 = 0; s2 = 0;
  #1 in = 1; s1 = 0; s2 = 1;
  #1 in = 1; s1 = 1; s2 = 0;
  #1 in = 1; s1 = 1; s2 = 1;
end

// Display and monitor the values
initial begin
  $display("Demux Test:");
  $monitor("%t in=%d S1=%d S2=%d A=%d B=%d C=%d D=%d",
           $time, in, s1, s2, A, B, C, D);
end

endmodule
