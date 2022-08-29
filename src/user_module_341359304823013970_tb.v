module top;

reg [3:0] request;
wire [3:0] grant;

async_rr_arbiter_341359304823013970 #(
	.REQUESTORS(4)
) dut (
	.request(request),
	.grant(grant)
);

initial begin
	$dumpfile("trace.vcd");
	$dumpvars(0, top);

	#100 request = 4'b0000;
	#100 request = 4'b0001;
	#100 request = 4'b0011;
	#100 request = 4'b0011;
	#100 request = 4'b0010;
	#100 request = 4'b0110;
	#100 request = 4'b0100;
	#100 request = 4'b1100;
	#100 request = 4'b1000;
	#100 request = 4'b0000;
end

endmodule
