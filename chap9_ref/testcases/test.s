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
       CONST 2)),
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t33,
        CONST 0)),
      NAME L0),
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t33,
        CONST 4)),
      NAME L1))),
   TEMP t33)),
 SEQ(
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
       _BADPTR,L2),
      LABEL L2)),
    MEM(
     BINOP(PLUS,
      TEMP t35,
      CONST 0))),
   NAME L3),
  MOVE(
   ESEQ(
    SEQ(
     MOVE(
      TEMP t36,
      TEMP t34),
     SEQ(
      CJUMP(EQ,
       TEMP t36,
       CONST 0,
       _BADPTR,L4),
      LABEL L4)),
    MEM(
     BINOP(PLUS,
      TEMP t36,
      CONST 4))),
   NAME L5)))
# After canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 4)),
 NAME L1)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L2)
LABEL L2
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L3)
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L4)
LABEL L4
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 4)),
 NAME L5)
# Basic Blocks: 
#
LABEL L7
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 4)),
 NAME L1)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L2)
#
LABEL L2
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L3)
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L4)
#
LABEL L4
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 4)),
 NAME L5)
JUMP(
 NAME L6)
LABEL L6
# Trace Scheduled: 
LABEL L7
MOVE(
 TEMP t33,
 CALL(
  NAME _allocRecord,
   CONST 2))
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 0)),
 NAME L0)
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t33,
   CONST 4)),
 NAME L1)
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 TEMP t34)
CJUMP(EQ,
 TEMP t35,
 CONST 0,
 _BADPTR,L2)
LABEL L2
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t35,
   CONST 0)),
 NAME L3)
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L4)
LABEL L4
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST 4)),
 NAME L5)
JUMP(
 NAME L6)
LABEL L6
# Instructions: 
L7:
	li t37 2
	move $a0 t37
	jal _allocRecord
	move t33 $v0
	la t38 L0
	sw t38 0(t33)
	la t39 L1
	sw t39 4(t33)
	move t34 t33
	move t35 t34
	beq t35 0 _BADPTR
L2:
	la t40 L3
	sw t40 0(t35)
	move t36 t34
	beq t36 0 _BADPTR
L4:
	la t41 L5
	sw t41 4(t36)
	b L6
L6:
END tigermain
	.data
	.word 1
L5:	.asciiz	"b"
	.data
	.word 1
L3:	.asciiz	"n"
	.data
	.word 1
L1:	.asciiz	"c"
	.data
	.word 5
L0:	.asciiz	"aname"
