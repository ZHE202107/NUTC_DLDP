module BCD(clk, rst_asyn, Q_out);
    input clk; //I clock in
    input rst_asyn; //I asyn reset
    output [3:0] Q_out; // O asyn Result

    reg [3:0] Q_out;
    
    //給定初始值
    initial begin
        Q_out=4'b0;
    end

    always@(posedge clk or posedge rst_asyn)
    begin 
        //當收到rst或Q_out為9的時候，就將Q_out歸0; 否則Q_out繼續累加1
        if (rst_asyn)
            Q_out = 0;
        else if(Q_out == 9)
            Q_out = 0;
        else
            Q_out=Q_out+1;
    end

    // always@(posedge rst_asyn)
    // begin 
    //     Q_out = 0;
    // end

    // always@(posedge clk)
    // begin 
    //     if(Q_out == 9)
    //         Q_out = 0;
    //     else
    //         Q_out=Q_out+1;
    // end
endmodule