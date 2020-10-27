module tb_p1;

parameter     N = 50         ;

wire [7:0]    out1           ;
wire [7:0]    out2           ;

reg  [2:0]    in             ;
reg           en             ;

dec3to8_shift dut1(
              .out  (  out1  ),
              .in   (  in    ),
              .en   (  en    ));

dec3to8_case  dut2(
              .out  (  out2  ),
              .in   (  in    ),
              .en   (  en    ));

initial begin
#(0)         en = 1'b0       ;      //reset
             in = 3'b000     ;      //reset

#(N)         en = 1'b1       ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);

#(N)         in = 3'b001     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b010     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b011     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b100     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b101     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b110     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         in = 3'b111     ;      #(N)   $display("in: %b, out1: %b, out2: %b", in, out1, out2);
#(N)         $finish         ;
end

endmodule
