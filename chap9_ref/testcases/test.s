PROCEDURE tigermain
# Before canonicalization: 
SEQ(
 MOVE(
  TEMP t34,
  ESEQ(
   SEQ(
    MOVE(
     TEMP t33,
     CALL(
      NAME _allocRecord,
       CONST 1)),
    MOVE(
     MEM(
      BINOP(PLUS,
       TEMP t33,
       CONST 0)),
     NAME L0)),
   TEMP t33)),
 MOVE(
  ESEQ(
   SEQ(
    MOVE(
     TEMP t35,
     TEMP t34),
    SEQ(
     CJUMP(EQ,
      TEMP t35,
      CONST 0,
      _BADPTR,L1),
     LABEL L1)),
   MEM(
    BINOP(PLUS,
     TEMP t35,
     CONST 0))),
  NAME L2))
# After canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L1)
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L2)
# Basic Blocks: 
#
LABEL L4
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L1)
#
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L2)
JUMP(
 NAME L3)
LABEL L3
# Trace Scheduled: 
LABEL L4
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 1))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L1)
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L2)
JUMP(
 NAME L3)
LABEL L3
# Instructions: 
L4:
	li t36 1
	move $a0 t36
	jal _allocRecord
	move t33 $v0
	la t37 L0
	sw t37 0(t33)
	move t34 t33
	move t35 t34
	beq t35 0 _BADPTR
L1:
	la t38 L2
	sw t38 0(t35)
	b L3
L3:
END tigermain
	.data
	.word 1
L2:	.asciiz	"n"
	.data
	.word 5
L0:	.asciiz	"aname"
