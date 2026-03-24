module tb_top_module;

reg clk;
reg rst;

wire [6:0] seg;
wire valid;

// Instantiate DUT
top_module uut (
    .clk(clk),
    .rst(rst),
    .seg(seg),
    .o_hit_count_valid(valid)
);

// Clock: 10kHz → period = 100us
always #50 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    // Reset pulse
    #200;
    rst = 0;

    // Run simulation
    #2000000;

    $finish;
end

endmodule