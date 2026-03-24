module pattern_detector (
    input [8:0] data,
    output match
);

// CHANGE THIS TO YOUR DOB
parameter PATTERN = 9'b011101010;

assign match = (data == PATTERN);

endmodule