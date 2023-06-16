`include "half_adder.v"
module half_adder_tb;
reg A,B;
wire S,C;
half hf(S,C,A,B);
initial begin
	A=0;B=0;
     #1 A=0;B=1;
     #1 A=1;B=0;
     #1 A=1;B=1;
end
initial begin
$display("Half Adder Truth Table");
$monitor("%t |A = %d|B = %d|S = %d|C = %d",$time,A,B,S,C);
end
endmodule

