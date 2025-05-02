module mux4 (
    input  logic [1:0] sel,
    input  logic [2:0] in0,
    input  logic [2:0] in1,
    input  logic [2:0] in2,
    input  logic [2:0] in3,
    output logic [2:0] out
);

    always_comb begin
        case (sel)
            2'd0: out = in0;
            2'd1: out = in1;
            2'd2: out = in2;
            2'd3: out = in3;
            default: out = 3'b000;  // bun pentru siguran??
        endcase
    end

endmodule
