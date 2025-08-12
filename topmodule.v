3: Chương trình verilog
module MUX_4TO1(
    input wire [3:0] I,
    input wire [1:0] S,
    output wire Y
    );
// Luồng dữ liệu: Quyết định tín hiệu đầu ra Y dựa trên tín hiệu điều khiển S0 và S1
    assign Y = (S == 2'b00) ? I[0] :
               (S == 2'b01) ? I[1] :
               (S == 2'b10) ? I[2] :
                             I[3];
endmodule
