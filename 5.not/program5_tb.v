`include "program5.v"
module program5_tb();
reg A;
wire Y;
not_gate ng(Y,A);
initial begin
	A=0; 
	#1 A=1;
end
initial begin
	$monitor("%t | A = %d | Y= %d |",$time,A,Y);
end
endmodule
