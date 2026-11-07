module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

wire [3:0] con;

    DFlip instance1(
        .data(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .notQ(led[1])
    );
    
    JKFlip instance2(
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .notQ(led[3])
    );
    
    TFlip instance3(
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .notQ(led[5])
    );
endmodule