module clock_divider (
    input clk,
    input rst,
    output reg tick_1s
);

reg [13:0] count;

always @(posedge clk) begin
    if (rst) begin
        count <= 0;
        tick_1s <= 0;
    end else begin
        if (count == 9999) begin
            count <= 0;
            tick_1s <= 1;   // 1-cycle pulse
        end else begin
            count <= count + 1;
            tick_1s <= 0;
        end
    end
end

endmodule