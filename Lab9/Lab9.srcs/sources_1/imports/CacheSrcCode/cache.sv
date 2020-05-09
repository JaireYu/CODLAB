`timescale 1ns / 1ps

module cache #(
    parameter  LINE_ADDR_LEN = 3, // line�ڵ�??????���ȣ�������ÿ��line����2^3��word
    parameter  SET_ADDR_LEN  = 2, // ���??????���ȣ�������??????����2^3=8??????
    parameter  TAG_ADDR_LEN  = 6, // tag����
    parameter  WAY_CNT       = 4  // �������ȣ�������ÿ�����ж���·line��������ֱ��ӳ����cache����˸ò���û��??????
)(
    input  clk, rst,
    output miss,               // ��CPU������miss�ź�
    input  [31:0] addr,        // ��д�����ַ
    input  rd_req,             // ��������??????
    output reg [31:0] rd_data, // ���������ݣ�??????�ζ�??????��word
    input  wr_req,             // д������??????
    input  [31:0] wr_data,      // Ҫд������ݣ�һ��д??????��word
    output reg [31:0]miss_cnt,
    output reg [31:0]req_cnt
    );

localparam MEM_ADDR_LEN    = TAG_ADDR_LEN + SET_ADDR_LEN ; // ���������ַ���� MEM_ADDR_LEN�������??????=2^MEM_ADDR_LEN��line
localparam UNUSED_ADDR_LEN = 32 - TAG_ADDR_LEN - SET_ADDR_LEN - LINE_ADDR_LEN - 2 ;       // ����δʹ�õĵ�ַ�ĳ�??????

localparam LINE_SIZE       = 1 << LINE_ADDR_LEN  ;         // ���� line ?????? word ��������?????? 2^LINE_ADDR_LEN ��word ?????? line
localparam SET_SIZE        = 1 << SET_ADDR_LEN   ;         // ����??????���ж����飬?????? 2^SET_ADDR_LEN ����

reg [            31:0] cache_mem    [SET_SIZE][WAY_CNT][LINE_SIZE]; // SET_SIZE��line��ÿ��line��LINE_SIZE��word
reg [TAG_ADDR_LEN-1:0] cache_tags   [SET_SIZE][WAY_CNT];            // SET_SIZE��TAG
reg                    valid        [SET_SIZE][WAY_CNT];            // SET_SIZE��valid(��Ч??????)
reg                    dirty        [SET_SIZE][WAY_CNT];            // SET_SIZE��dirty(��λ)

wire [              2-1:0]   word_addr;                   // �������??????addr��ֳ���5����??????
wire [  LINE_ADDR_LEN-1:0]   line_addr;
wire [   SET_ADDR_LEN-1:0]    set_addr;
wire [   TAG_ADDR_LEN-1:0]    tag_addr;
wire [UNUSED_ADDR_LEN-1:0] unused_addr;

enum  {IDLE, SWAP_OUT, SWAP_IN, SWAP_IN_OK} cache_stat;    // cache ״???����״̬��??????
                                                           // IDLE���������SWAP_OUT�������ڻ�����SWAP_IN�������ڻ��룬SWAP_IN_OK����������һ���ڵ�д��cache����??????

reg  [   SET_ADDR_LEN-1:0] mem_rd_set_addr = 0;
reg  [   TAG_ADDR_LEN-1:0] mem_rd_tag_addr = 0;
wire [   MEM_ADDR_LEN-1:0] mem_rd_addr = {mem_rd_tag_addr, mem_rd_set_addr};
reg  [   MEM_ADDR_LEN-1:0] mem_wr_addr = 0;
reg  [31:0] mem_wr_line [LINE_SIZE];
wire [31:0] mem_rd_line [LINE_SIZE];
assign {unused_addr, tag_addr, set_addr, line_addr, word_addr} = addr;  // ��� 32bit ADDR

reg line_cache_hit = 0;
reg miss_cnt;
reg req_cnt;
integer index = -1;
wire mem_gnt;      // ������Ӧ��д��������??????
always @ (*) begin              // �ж� �����address �Ƿ�?????? cache ����??????
    for(integer i = 0; i != WAY_CNT; i++) begin
        if(valid[set_addr][i] && cache_tags[set_addr][i] == tag_addr) begin
            line_cache_hit = 1'b1;
            index = i;
            break;
        end
        else begin
            line_cache_hit = 1'b0;
            index = -1;
        end
    end
end

integer Order [SET_SIZE][WAY_CNT];   //��ά����
integer MAX_Order [SET_SIZE];        //ÿһ�е�??????(MRU)
integer MAX_Order_WIRE [SET_SIZE];        //ÿһ�е�??????(MRU)
always@(*) begin
    integer max = 0;
    for(integer i = 0; i < SET_SIZE; i++) begin
            integer max = 0;
            integer max_index = 0;
            for(integer j = 0; j < WAY_CNT; j++) begin
                if(Order[i][j] > max) begin
                    max = Order[i][j];
                    max_index = j;
                end
            end
            MAX_Order_WIRE[i] = max_index;
    end
end

always @ (posedge clk or posedge rst) begin     // //LRU
    if(rst) begin
        req_cnt <= 0;
        miss_cnt <= 0;
        cache_stat <= IDLE;
        for(integer i = 0; i < SET_SIZE; i++) begin
            MAX_Order[i] <= 0;
            for(integer j = 0; j < WAY_CNT; j++) begin
                dirty[i][j] <= 1'b0;
                valid[i][j] <= 1'b0; 
                Order[i][j] <= 0;
            end
        end
        for(integer k = 0; k < LINE_SIZE; k++)
            mem_wr_line[k] <= 0;        //����ʱʹ??????
        mem_wr_addr <= 0; //tag + set addr
        {mem_rd_tag_addr, mem_rd_set_addr} <= 0;
        rd_data <= 0;
    end else begin
        case(cache_stat) 
        IDLE:       begin
                        if(line_cache_hit) begin
                            if(rd_req) begin    // ���cache���У������Ƕ�����
                                rd_data <= cache_mem[set_addr][index][line_addr];   //��ֱ�Ӵ�cache��ȡ��Ҫ��������
                            end else if(wr_req) begin // ���cache���У�������д����
                                cache_mem[set_addr][index][line_addr] <= wr_data;   // ��ֱ����cache��д����??????
                                dirty[set_addr][index] <= 1'b1;                     // д���ݵ�ͬʱ����??????
                            end 
                            if(rd_req | wr_req) begin
                                req_cnt <= req_cnt + 1;
                                for(integer i = 0; i < WAY_CNT; i++) begin
                                    if(i == index)
                                        Order[set_addr][i] <= 0;
                                    else
                                        Order[set_addr][i] <= Order[set_addr][i] + 1;
                                end
                                MAX_Order[set_addr] <= MAX_Order_WIRE[set_addr];
                            end
                        end else begin
                            
                            if(wr_req | rd_req) begin   // ��� cache δ���У������ж�д��������Ҫ���л�??????
                                miss_cnt <= miss_cnt + 1;
                                if(valid[set_addr][MAX_Order[set_addr]] & dirty[set_addr][MAX_Order[set_addr]]) begin    // ��� Ҫ�����cache line ������Ч�����࣬����Ҫ�Ƚ�������
                                    cache_stat  <= SWAP_OUT;
                                    mem_wr_addr <= {cache_tags[set_addr][MAX_Order[set_addr]], set_addr};
                                    mem_wr_line <= cache_mem[set_addr][MAX_Order[set_addr]];
                                end else begin                                   // ��֮����??????Ҫ������ֱ�ӻ���
                                    cache_stat  <= SWAP_IN;
                                end
                                {mem_rd_tag_addr, mem_rd_set_addr} <= {tag_addr, set_addr};
                            end
                        end
                    end
        SWAP_OUT:   begin
                        if(mem_gnt) begin           // ������������ź���Ч��˵�������ɹ���������һ״???
                            cache_stat <= SWAP_IN;
                        end
                    end
        SWAP_IN:    begin
                        if(mem_gnt) begin           // ������������ź���Ч��˵������ɹ���������һ״???
                            cache_stat <= SWAP_IN_OK;
                        end
                    end
        SWAP_IN_OK: begin           // ��һ�����ڻ���ɹ��������ڽ����������lineд��cache��������tag���ø�valid���õ�dirty
                        for(integer i=0; i<LINE_SIZE; i++) begin
                            cache_mem[mem_rd_set_addr][MAX_Order[mem_rd_set_addr]][i] <= mem_rd_line[i];
                        end
                        cache_tags[mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= mem_rd_tag_addr;
                        valid     [mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= 1'b1;
                        dirty     [mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= 1'b0;
                        cache_stat <= IDLE;        // �ص�����״???
                        for(integer i = 0; i < WAY_CNT; i++) begin
                            if(i == index)
                                Order[mem_rd_set_addr][i] <= 0;
                            else
                                Order[mem_rd_set_addr][i] <= Order[mem_rd_set_addr][i] + 1;
                        end
                        MAX_Order[mem_rd_set_addr] <= MAX_Order_WIRE[mem_rd_set_addr];
                    end
        endcase
    end
end
/*
always @ (posedge clk or posedge rst) begin     // //FIFO
    if(rst) begin
        req_cnt <= 0;
        miss_cnt <= 0;
        cache_stat <= IDLE;
        for(integer i = 0; i < SET_SIZE; i++) begin
            MAX_Order[i] <= 0;
            for(integer j = 0; j < WAY_CNT; j++) begin
                dirty[i][j] <= 1'b0;
                valid[i][j] <= 1'b0; 
                Order[i][j] <= 0;
            end
        end
        for(integer k = 0; k < LINE_SIZE; k++)
            mem_wr_line[k] <= 0;        //����ʱʹ??????
        mem_wr_addr <= 0; //tag + set addr
        {mem_rd_tag_addr, mem_rd_set_addr} <= 0;
        rd_data <= 0;
    end else begin
        case(cache_stat) 
        IDLE:       begin
                        if(line_cache_hit) begin
                            if(rd_req) begin    // ���cache���У������Ƕ�����
                                rd_data <= cache_mem[set_addr][index][line_addr];   //��ֱ�Ӵ�cache��ȡ��Ҫ��������
                            end else if(wr_req) begin // ���cache���У�������д����
                                cache_mem[set_addr][index][line_addr] <= wr_data;   // ��ֱ����cache��д����??????
                                dirty[set_addr][index] <= 1'b1;                     // д���ݵ�ͬʱ����??????
                            end 
                            if(rd_req | wr_req)
                                req_cnt <= req_cnt + 1;
                        end else begin
                            
                            if(wr_req | rd_req) begin   // ��� cache δ���У������ж�д��������Ҫ���л�??????
                                miss_cnt <= miss_cnt + 1;
                                if(valid[set_addr][MAX_Order[set_addr]] & dirty[set_addr][MAX_Order[set_addr]]) begin    // ��� Ҫ�����cache line ������Ч�����࣬����Ҫ�Ƚ�������
                                    cache_stat  <= SWAP_OUT;
                                    mem_wr_addr <= {cache_tags[set_addr][MAX_Order[set_addr]], set_addr};
                                    mem_wr_line <= cache_mem[set_addr][MAX_Order[set_addr]];
                                end else begin                                   // ��֮����??????Ҫ������ֱ�ӻ���
                                    cache_stat  <= SWAP_IN;
                                end
                                {mem_rd_tag_addr, mem_rd_set_addr} <= {tag_addr, set_addr};
                            end
                        end
                    end
        SWAP_OUT:   begin
                        if(mem_gnt) begin           // ������������ź���Ч��˵�������ɹ���������һ״???
                            cache_stat <= SWAP_IN;
                        end
                    end
        SWAP_IN:    begin
                        if(mem_gnt) begin           // ������������ź���Ч��˵������ɹ���������һ״???
                            cache_stat <= SWAP_IN_OK;
                        end
                    end
        SWAP_IN_OK: begin           // ��һ�����ڻ���ɹ��������ڽ����������lineд��cache��������tag���ø�valid���õ�dirty
                        for(integer i=0; i<LINE_SIZE; i++) begin
                            cache_mem[mem_rd_set_addr][MAX_Order[mem_rd_set_addr]][i] <= mem_rd_line[i];
                        end
                        cache_tags[mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= mem_rd_tag_addr;
                        valid     [mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= 1'b1;
                        dirty     [mem_rd_set_addr][MAX_Order[mem_rd_set_addr]] <= 1'b0;
                        cache_stat <= IDLE;        // �ص�����״???
                        if(MAX_Order[mem_rd_set_addr] == WAY_CNT - 1)
						    MAX_Order[mem_rd_set_addr] <= 0;
                        else
                            MAX_Order[mem_rd_set_addr] <= MAX_Order[mem_rd_set_addr] + 1;
                    end
        endcase
    end
end
*/
wire mem_rd_req = (cache_stat == SWAP_IN );
wire mem_wr_req = (cache_stat == SWAP_OUT);
wire [   MEM_ADDR_LEN-1 :0] mem_addr = mem_rd_req ? mem_rd_addr : ( mem_wr_req ? mem_wr_addr : 0);

assign miss = (rd_req | wr_req) & ~(line_cache_hit && cache_stat==IDLE) ;     // ?????? �ж�д����ʱ�����cache�����ھ�??????(IDLE)״???����???δ���У���miss=1

main_mem #(     // ���棬ÿ�ζ�д��line Ϊ��??????
    .LINE_ADDR_LEN  ( LINE_ADDR_LEN          ),
    .ADDR_LEN       ( MEM_ADDR_LEN           )
) main_mem_instance (
    .clk            ( clk                    ),
    .rst            ( rst                    ),
    .gnt            ( mem_gnt                ),
    .addr           ( mem_addr               ),
    .rd_req         ( mem_rd_req             ),
    .rd_line        ( mem_rd_line            ),
    .wr_req         ( mem_wr_req             ),
    .wr_line        ( mem_wr_line            )
);

endmodule





