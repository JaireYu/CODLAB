# 概述：递归计算斐波那契数列的第n个数
# Author: WangXuan
# 
# 系统要求：1、具有一个大小至少为0x400 Byte的数据RAM （该程序中，其高地址用作栈）
#           2、请根据实际情况将a0设置为你的DataRam的地址，例如该系统中DataRam起始地址为0x00000000，则我第一个指令是lui a0, 0x00000
#AUIPC



.org 0x0
 	.global _start
_start:
    lui   ra, 0x00001   	# 设置ra = 0x00001000
    nop
    nop
    nop
    nop
    addi  sp, ra, 0x400 	# 为栈分配0x400Byte的空间 sp = 0x00001400
        nop
    nop
    nop
    nop
    ori    gp, ra, -1   	# gp = 0xffffffff
        nop
    nop
    nop
    nop
    addi   sp, zero, 8		# sp = 0x0000008
        nop
    nop
    nop
    nop
    andi   sp, sp, 8		# sp = 0x0000008
        nop
    nop
    nop
    nop
    xori   sp, sp, 8		# sp = 0
        nop
    nop
    nop
    nop
    sltiu  sp, sp, -100	# sp = 1
        nop
    nop
    nop
    nop
    slti   sp, sp, 100		# sp = 1
        nop
    nop
    nop
    nop
    and    ra, sp, gp		# ra = 1
        nop
    nop
    nop
    nop
    or     ra, ra, sp		# ra = 1
        nop
    nop
    nop
    nop
    add    ra, ra, sp		# ra = 1
        nop
    nop
    nop
    nop
    sub    sp, ra, ra		# sp = 0
        nop
    nop
    nop
    nop
    sll    ra, ra, ra		# ra = 2
        nop
    nop
    nop
    nop
    slli   ra, ra, 1		# ra = 4
        nop
    nop
    nop
    nop
    xor    sp, ra, sp		# sp = 4
        nop
    nop
    nop
    nop
    srli   ra, ra, 1		# ra = 2
        nop
    nop
    nop
    nop
    srl    ra, ra, ra		# ra = 0
        nop
    nop
    nop
    nop
    sra	    sp, gp, sp		# sp = 0xffffffff
        nop
    nop
    nop
    nop
    srai   gp, gp, 0x4		# gp = 0xffffffff
        nop
    nop
    nop
    nop
    slt	   ra, ra, sp		# ra = 0, 因为算数
        nop
    nop
    nop
    nop
    sltu  ra, ra, sp		# ra = 1. 因为无符号
        nop
    nop
    nop
    nop
    auipc  ra, 100000		# t6 = 0x186a3054
