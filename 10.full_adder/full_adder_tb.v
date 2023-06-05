`include "full_adder1.v"
module full_adder_tb;
reg A,B,Cin;
wire S,C;
full fl(S,C,A,B,Cin);
initial begin
	A=0;B=0;Cin=0;
    #1 A=0;B=0;Cin=1;
    #1 A=0;B=1;Cin=0;
    #1 A=0;B=1;Cin=1;
    #1 A=1;B=0;Cin=0;
     #1 A=1;B=0;Cin=1;
     #1 A=1;B=1;Cin=0;
     #1 A=1;B=1;Cin=1;
end
initial begin
$display("Full Adder Truth Table");
$monitor("%t |A = %d|B = %d|Cin = %d|S = %d|C = %d",$time,A,B,Cin,S,C);
end
endmodule
