module hit_counter (
    input clk,
    input rst,
    input match,
    input clear,
    output reg [15:0] count
);

always @(posedge clk) begin
    if (rst || clear)
        count <= 0;
    else if (match)
        count <= count + 1;
end

endmodule