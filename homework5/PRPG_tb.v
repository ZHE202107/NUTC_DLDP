

module PRPG_tb;
reg rst;      //reset
wire [3:1] out; //3-bit output

//----- clock產生器 -----
reg clk = 1'b0;         //設clock初值為1
always #5 clk = !clk;   //每隔5個單位時間就變換

initial begin
    #0  rst=1'b1;
    #14 rst=1'b0;
    #195 $finish;
end

PRPG PRPG_tb(.clk(clk), .rst(rst), .out(out));

initial begin
    $dumpfile("PRPG.vcd");
    $dumpvars(0, PRPG_tb);
end
endmodule
