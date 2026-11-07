module TFlip(
    input T,
    input clk,
    output Q, notQ
);
    JKFlip cir2(
        .J(T), 
        .K(T), 
        .clk(clk),
        .Q(Q), 
        .notQ(notQ)
    );
endmodule  

 //assign pd_out = store & not3;