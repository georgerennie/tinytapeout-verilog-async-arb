module top;

reg [7:0] request;
wire [7:0] grant;

async_rr_arbiter_341359304823013970 #(
	.REQUESTORS(8)
) dut (
	.request(request),
	.grant(grant)
);

initial begin
	$dumpfile("trace.vcd");
	$dumpvars(0, top);

	#100 request = 8'b00000000;
	#100 request = 8'b00000001;
	#100 request = 8'b00000011;
	#100 request = 8'b00000011;
	#100 request = 8'b00000010;
	#100 request = 8'b00000110;
	#100 request = 8'b00000100;
	#100 request = 8'b00001100;
	#100 request = 8'b00001000;
	#100 request = 8'b00000000;
	#100 request = 8'b00100000;
	#100 request = 8'b00100000;
	#100 request = 8'b00110000;
	#100 request = 8'b00010000;
	#100 request = 8'b00000000;
end

endmodule
