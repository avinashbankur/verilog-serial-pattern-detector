module top_module (
    input clk,
    input rst,

    output [6:0] seg,
    output o_hit_count_valid
);

wire serial_data;
wire [8:0] shift_data;
wire match;

wire [15:0] count;
wire [15:0] latched_count;

wire tick_1s;
wire clear_counter;

// Always enabled transmission
wire tx_enable_n = 0;

// Modules
transmitter tx(clk, rst, tx_enable_n, serial_data);

shift_register sr(clk, rst, serial_data, shift_data);

pattern_detector pd(shift_data, match);

clock_divider cd(clk, rst, tick_1s);

hit_counter hc(clk, rst, match, clear_counter, count);

display_controller dc(
    clk,
    rst,
    tick_1s,
    count,
    latched_count,
    clear_counter,
    o_hit_count_valid
);

seven_segment sseg(latched_count[3:0], seg);

endmodule