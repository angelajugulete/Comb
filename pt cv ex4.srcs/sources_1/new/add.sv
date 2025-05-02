module add (
    input  logic [2:0] in0,
    input  logic [2:0] in1,
    output logic [2:0] out,
    output logic       carry
);

    assign {carry, out} = in0 + in1;

endmodule
