`timescale 1ns/1ns
`include "../rtl/param.v"

module imag_process_tb();
    reg                 clk     ;
    reg                 rst_n   ;

    reg                 din_sop ;
    reg                 din_eop ;
    reg                 din_vld ;
    reg     [15:0]      din     ;

    wire                dout_sop;
    wire                dout_eop;
    wire                dout_vld;
    wire    [15:0]      dout    ;


imag_process u_imp(
    /*input           */.clk         (clk       ),
    /*input           */.rst_n       (rst_n     ),
    /*input           */.din_sop     (din_sop   ),
    /*input           */.din_eop     (din_eop   ),
    /*input           */.din_vld     (din_vld   ),
    /*input   [15:0]  */.din         (din       ),//RGB565
    /*output          */.dout_sop    (dout_sop  ),
    /*output          */.dout_eop    (dout_eop  ),
    /*output          */.dout_vld    (dout_vld  ),
    /*output  [15:0]  */.dout        (dout      ) 
);

    parameter CLOCK_CYCLE = 20;

    initial clk = 1'b0;
    always #(CLOCK_CYCLE/2) clk = ~clk;

    integer i = 0, j = 0;
    initial begin 
        rst_n = 1'b0;
        din_vld = 0;
        din_eop = 0;
        din_sop = 0;
        din = 0;
        #(CLOCK_CYCLE*2);
        rst_n = 1'b1;
        #(CLOCK_CYCLE*20);
        repeat(2)begin 
            for(i=0;i<`V_AP;i=i+1)begin 
                for(j=0;j<`H_AP;j=j+1)begin 
                    din_sop = (i == 0 && j == 0)?1:0;
                    din_eop = (i == 719 && j == 1279)?1:0;
                    din_vld = 1'b1;
                    din     = {$random};
                    #(CLOCK_CYCLE*1);
                end 
                din_vld = 0;
                din_eop = 0;
                din_sop = 0;
                #(CLOCK_CYCLE*10);
            end 
            #(CLOCK_CYCLE*100);
         end 
         #(CLOCK_CYCLE*100);
         $stop;

    end 

endmodule 

