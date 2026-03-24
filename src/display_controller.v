module display_controller (
    input clk,
    input rst,
    input tick_1s,
    input [15:0] hit_count,

    output reg [15:0] latched_count,
    output reg clear_counter,
    output reg valid
);

always @(posedge clk) begin
    if (rst) begin
        latched_count <= 0;
        clear_counter <= 0;
        valid <= 0;
    end else begin
        if (tick_1s) begin
            latched_count <= hit_count;
            clear_counter <= 1;
            valid <= 1;
        end else begin
            clear_counter <= 0;
            valid <= 0;
        end
    end
end

endmodule