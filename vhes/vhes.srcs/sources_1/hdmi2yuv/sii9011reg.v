module sii9011reg(
    input      [8 :0]   REG_INDEX,
    output reg [31:0]   REG_DATA,
    output     [8 :0]   REG_SIZE  
);

    // 需要读写的寄存器数量
    // SIL9011 共需要配置 5 个寄存器
    assign	REG_SIZE = 9'd5;

    /***************** Config Data REG *****************/	
    always@(*)
        case(REG_INDEX)
            0:  REG_DATA	= { 8'h30, 8'h05, 8'h10 };
            1:  REG_DATA	= { 8'h30, 8'h08, 8'h05 };
            2:  REG_DATA	= { 8'h30, 8'h09, 8'h01 };
            3:  REG_DATA	= { 8'h30, 8'h05, 8'h04 };
            4:  REG_DATA	= { 8'h30, 8'hb5, 8'h04 };
            default:REG_DATA =0;
        endcase

endmodule