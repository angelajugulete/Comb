module top (
    input  logic [1:0] instr_addr,
    input  logic [2:0] A,
    input  logic [2:0] B,
    output logic       lt_flag,
    output logic       eq_flag,
    output logic       carry_flag,
    output logic [2:0] alu_out
);

    logic [5:0] instr;
    logic [2:0] mux2_out, or_bw_out, sub_out, add_out, shl_out, mux4_out;

    rom ROM (
        .in(instr_addr),
        .out(instr)
    );

    mux2 MUX2 (
        .sel(instr[3]),
        .in0(A),
        .in1(B),
        .out(mux2_out)
    );

    or_bw OR_BW (
        .in0(mux2_out),
        .in1(instr[2:0]),
        .out(or_bw_out)
    );

    sub SUB (
        .in0(mux2_out),
        .in1(instr[2:0]),
        .out(sub_out)
    );

    add ADD (
        .in0(mux2_out),
        .in1(instr[2:0]),
        .out(add_out),
        .carry(carry_flag)
    );

    shl SHL (
        .in0(mux2_out),
        .in1(instr[1:0]),
        .out(shl_out)
    );

    mux4 MUX4 (
        .sel(instr[5:4]),
        .in0(or_bw_out),
        .in1(sub_out),
        .in2(add_out),
        .in3(shl_out),
        .out(mux4_out)
    );

    comp COMP (
        .in0(1'b0),
        .in1(mux4_out),
        .lt_out(lt_flag),
        .eq_out(eq_flag)
    );

    assign alu_out = mux4_out;

endmodule
