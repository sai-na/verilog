module or_gate(output reg Y, input A, input B);
always @(A or B) begin
	if(A==0 && B==0)
		Y=0;
	else
		Y=1;
end
endmodule
