`timescale 1ns / 1ps

module top_tb();

    logic [1:0] instr_addr_tb;
    logic [2:0] A_tb, B_tb;
    logic [2:0] alu_out_tb;
    logic       lt_flag_tb, eq_flag_tb, carry_flag_tb;

    initial begin
        A_tb = 3'd7;
        B_tb = 3'd6;
        instr_addr_tb = 2'd0;

        #7 instr_addr_tb = 2'd1;
        #7 instr_addr_tb = 2'd2;
        #7 instr_addr_tb = 2'd3;

        #10 $stop;
    end

    top DUT (
        .instr_addr(instr_addr_tb),
        .A(A_tb),
        .B(B_tb),
        .alu_out(alu_out_tb),
        .lt_flag(lt_flag_tb),
        .eq_flag(eq_flag_tb),
        .carry_flag(carry_flag_tb)
    );

endmodule
