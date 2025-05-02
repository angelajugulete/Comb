module rom (
    input  logic [1:0] in,
    output logic [5:0] out
);

    always_comb begin
        case (in)
            2'b00: out = 6'b000010;
            2'b01: out = 6'b011011;
            2'b10: out = 6'b100001;
            2'b11: out = 6'b111001;
            default: out = 6'b000000; // de siguran??
        endcase
    end

endmodule
