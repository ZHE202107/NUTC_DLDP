module clkgen(clka, clkb, clka_out, clkb_out);
    input clka, clkb;
    output clka_out, clkb_out;
    reg clka_out, clkb_out;

    always @(clka) begin
        clka_out = clka;
    end
    always @(clkb) begin
        clkb_out = clkb;
    end
endmodule