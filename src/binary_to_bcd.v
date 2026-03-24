module binary_to_bcd (
    input [15:0] binary,
    output reg [15:0] bcd
);

integer i;

always @(*) begin
    bcd = 0;
    for (i = 15; i >= 0; i = i - 1) begin
        bcd = {bcd[14:0], binary[i]};
        if (bcd[3:0] > 4) bcd[3:0] = bcd[3:0] + 3;
        if (bcd[7:4] > 4) bcd[7:4] = bcd[7:4] + 3;
    end
end

endmodule