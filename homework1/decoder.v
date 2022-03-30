module decoder_2_4(E , In , Out);
    input E;            // 致能輸入E
    input [1:0] In;     // 2-bit輸入In
    output [3:0] Out;   // 4-bit輸出Out
    wire [3:0] Out;     // 4-bit輸出的Out連接線

    assign Out = E ? 1'b1 << In : 4'h0; // E為1時輸出1位元二進制左移In個位元，為0時輸出0

endmodule

module decode_3_8(E , In , Out);
    input   E;              // 致能輸入E	
    input   [2:0] In;       // 3-bit輸入In
    output  [7:0] Out;      // 8-bit輸出Out
    wire    E1;             // 3to8解碼器的致能線E1(E1=E')
    wire    G1;             // 2to4解碼器1之致能線G1
    wire    G2;             // 2to4解碼器2之致能線G2          
                            
    not u1(E1 , In[2]);     // E1=E1與In[2]透過NOT閘連接
    and a1(G1 , E , In[2]); // G1=E與In[2]透過AND閘連接
    and a2(G2 , E , E1);    // G2=E與E1透過AND閘連接
    decoder_2_4 block1(     //Out[7:4]=G1及In[0:1]輸入decoder_2_4
        .E(G1), 
        .In(In[1 : 0]), 
        .Out(Out[7 : 4])
    );
    decoder_2_4 block2(     //Out[3:0]=G2及In[0:1]輸入decoder_2_4
        .E(G2), 
        .In(In[1 : 0]),
        .Out(Out[3 : 0])
    );
endmodule