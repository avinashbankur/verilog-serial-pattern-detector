module shift_register (
    input clk,
    input rst,
    input serial_in,
    output reg [8:0] data_out
);

always @(posedge clk) begin
    if (rst)
        data_out <= 0;
    else
        data_out <= {serial_in, data_out[8:1]};
end

endmodule