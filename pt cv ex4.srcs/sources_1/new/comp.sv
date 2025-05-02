module comp (
    input logic [2:0] in1,
    input logic       in0,
    output logic      lt_out,
    output logic      eq_out
);

    always_comb begin
        lt_out = (in1 < in0);
        eq_out = (in1 == in0);
    end

endmodule
