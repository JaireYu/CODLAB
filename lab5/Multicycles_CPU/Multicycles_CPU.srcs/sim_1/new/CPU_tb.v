module CPU_tb(
    );
    reg clk;
    reg PCrst;
    reg OutputsCtrlrst;
    reg RFrst;
    reg run;
    reg [7:0]addr;
    wire [31:0]Debug_Memdata;
    wire [31:0]Debug_RFdata;
    wire [7:0]Debug_PC;
    Multicycles_CPU MCPU(
    clk,
    PCrst,
    OutputsCtrlrst,
    RFrst,
    run,
    addr,
    Debug_Memdata,
    Debug_RFdata,
    Debug_PC
    );
    initial
    begin
        clk = 1;
        forever begin
        #5 clk = ~clk;
        end
    end
    initial
    begin
        #2 PCrst = 1; OutputsCtrlrst = 1; RFrst = 1;
        #5 PCrst = 0; OutputsCtrlrst = 0; RFrst = 0;
        run = 1;
        addr = 2;
    end
endmodule

