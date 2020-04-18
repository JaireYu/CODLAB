test2: 
csrrwi ra, fcsr,10 
li gp, 2
li t0, 10
li t1, 2
csrrw t2, fcsr, t1
beq t0, t2, test3
j fail

test3:
csrrsi ra, fcsr,2
li gp, 3
li t3, 2
beq  ra, t3, test4
j fail

test4: 
li gp, 4
csrrs t2, fcsr, gp
li t0, 2
beq t0, t2, test5
j fail

test5:
li gp, 5
csrrci t2, fcsr, 0
li t0, 6
beq t0, t2, test6

test6:
li gp, 6
csrrc t2, fcsr, gp
li t1, 6
beq t1, t2, test7

test7:
li  gp, 7
csrrwi t0, fcsr, 0
beq zero, t0, success

success:
li gp, 1
j success

fail:
j fail