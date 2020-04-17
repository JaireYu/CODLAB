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
    addi  sp, ra, 0x400 	# 为栈分配0x400Byte的空间 sp = 0x00001400
    ori    gp, ra, -1   	# gp = 0xffffffff
    addi   sp, zero, 8		# sp = 0x0000008
    andi   sp, sp, 8		# sp = 0x0000008
    xori   sp, sp, 8		# sp = 0
    sltiu  sp, sp, -100	# sp = 1
    slti   sp, sp, 100		# sp = 1
    and    ra, sp, gp		# ra = 1
    or     ra, ra, sp		# ra = 1
    add    ra, ra, sp		# ra = 1
    sub    sp, ra, ra		# sp = 0
    sll    ra, ra, ra		# ra = 2
    slli   ra, ra, 1		# ra = 4
    xor    sp, ra, sp		# sp = 4
    srli   ra, ra, 1		# ra = 2
    srl    ra, ra, ra		# ra = 0
    sra	    sp, gp, sp		# sp = 0xffffffff
    srai   gp, gp, 0x4		# gp = 0xffffffff
    slt	   ra, ra, sp		# ra = 0, 因为算数
    sltu  ra, ra, sp		# ra = 1. 因为无符号
    auipc  ra, 100000		# t6 = 0x186a3054
