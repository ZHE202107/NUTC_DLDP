module BCD_tb;
    reg rst = 1'b0;     //設重置信號初值為0
    wire [3:0] O_tb;    //4bit 輸出

    //----- clock產生器 -----
    reg clk = 1'b0;         //設clock初值為1
    always #5 clk = !clk;   //每隔5個單位時間就變換
    
    initial begin
        // 模擬按下重置鈕
        #33 rst = 1'b1;
        #1  rst = !rst;
        // 模擬按下重置鈕
        #54 rst = 1'b1;
        #1  rst = !rst;
        #120 $finish; 
    end

    BCD BCD_tb1(.clk(clk), .rst_asyn(rst), .Q_out(O_tb));

    initial begin
        $dumpfile("BCD.vcd");
        $dumpvars(0, BCD_tb);
    end
endmodule