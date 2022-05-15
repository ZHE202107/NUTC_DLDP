module PRPG (
           input  clk,          // 1-bit clock
           input  rst,          // 1-bit clear Active-high synchronous
           output reg[3:1] out  // 3-bit result
       );

initial
    out = 3;

always@ (posedge clk) begin
    if(rst)
        out <= 4;
    else begin
        // out[3] <= out[2];
        // out[2] <= out[1];
        // out[1] <= out[1] ^ out[3];
        out <= {out[2:1], out[3]^out[1]};
    end
end
endmodule
