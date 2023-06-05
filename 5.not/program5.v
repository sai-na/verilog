module not_gate(output reg Y, input A);
always @(A) begin
	if(A==0)
		Y=1;
	else
		Y=0;
end
endmodule
	
