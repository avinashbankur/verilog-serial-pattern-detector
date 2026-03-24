module transmitter (
    input clk,
    input rst,
    input tx_enable_n,
    output reg tx_out
);

reg [9:0] data;
reg [3:0] bit_cnt;

always @(posedge clk) begin
    if (rst) begin
        data <= 0;
        bit_cnt <= 0;
        tx_out <= 0;
    end else if (!tx_enable_n) begin
        tx_out <= data[bit_cnt];

        if (bit_cnt == 9) begin
            bit_cnt <= 0;
            data <= data + 1;
        end else begin
            bit_cnt <= bit_cnt + 1;
        end
    end
end

endmodule