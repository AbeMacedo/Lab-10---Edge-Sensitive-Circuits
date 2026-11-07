module JKFlip(
    input J, K,
    input clk,
    output Q, notQ
);

    DFlip cir1(
        .data((J & notQ) | (~K & Q)), 
        .clk(clk),
        .Q(Q), 
        .notQ(notQ)
);   
endmodule

 //assign pd_out = store & not3;