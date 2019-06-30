module DDU(
    input clk,
    input rst,
    input cont,
    input step,
    input Mem_or_RF,
    input inc,
    input dec,
    input [7:0]PC,
    input [31:0]RFdata,
    output reg run,  //
    output [15:0]led,  //
    output [6:0]seg,   
    output [7:0]an,     
    output reg [7:0]addr //
);
    reg flag;
    reg incflag;
    reg decflag;
    reg inconce;
    reg deconce;
    assign led[15:8] = addr;
    assign led[7:0] = PC;
    wire [31:0]Segdisplaydata;
    assign Segdisplaydata = RFdata;
    Segdisplay32bit segdisplay32bit(
        .number32bit(Segdisplaydata),
        .clk_5MHZ(clk),
        .an(an),
        .seg(seg)
    );
    
    always@(posedge clk or posedge rst) begin
        if(rst)
            incflag <= 0;
        else if(inc == 1)
            incflag <= 1;
        else 
            incflag <= 0;
    end
    
    always@(posedge clk) begin
        if(inc == 1 && incflag == 0)
            inconce <= 1;
        else 
            inconce <= 0;
    end

    always@(posedge clk or posedge rst) begin
        if(rst)
            decflag <= 0;
        else if(dec == 1)
            decflag <= 1;
        else 
            decflag <= 0;
    end
    
    always@(posedge clk) begin
        if(dec == 1 && decflag == 0)
            deconce <= 1;
        else 
            deconce <= 0;
    end

    always@(posedge clk or posedge rst) begin
        if(rst)
            addr <= 8'b00000000;
        else begin
            if(inconce == 1)
                addr <= addr + 1;
            else if(deconce == 1)
                addr <= addr - 1;
        end
    end
    
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            run <= 0;    
        end
        else if(cont == 1) begin
            run <= 1;            
        end
        else if(step == 1) begin
            if(flag == 0)
                run <= 1;
            else 
                run <= 0; 
        end
        else if(cont == 0) begin
            run <= 0;
        end
    end

    always@(posedge clk or posedge rst) begin
        if(rst) begin
            flag <= 0;    
        end
        else if(cont == 1) begin
            flag <= 0;            
        end
        else if(step == 1) begin
            flag <= 1;
        end
        else if(step == 0) begin
            flag <= 0;
        end
    end


    
endmodule