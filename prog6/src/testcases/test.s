PROCEDURE tigermain
# Before canonicalization: 
SEQ(
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
   TEMP t35,
   CALL(
    NAME _initArray,
     CONST 9,
     NAME L1))),
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
      _BADPTR,L2),
     LABEL L2)),
   MEM(
    BINOP(PLUS,
     TEMP t36,
     CONST 0))),
  ESEQ(
   SEQ(
    MOVE(
     TEMP t37,
     TEMP t35),
    SEQ(
     MOVE(
      TEMP t38,
      CONST 2),
     SEQ(
      CJUMP(LT,
       TEMP t38,
       CONST 0,
       _BADSUB,L3),
      SEQ(
       LABEL L3,
       SEQ(
        CJUMP(GT,
         TEMP t38,
         MEM(
          BINOP(PLUS,
           TEMP t37,
           CONST -4)),
         _BADSUB,L4),
        LABEL L4))))),
   MEM(
    BINOP(PLUS,
     TEMP t37,
     BINOP(MUL,
      TEMP t38,
      CONST 4))))))
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
 CALL(
  NAME _initArray,
   CONST 9,
   NAME L1))
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L2)
LABEL L2
MOVE(
 TEMP t39,
 BINOP(PLUS,
  TEMP t36,
  CONST 0))
MOVE(
 TEMP t37,
 TEMP t35)
MOVE(
 TEMP t38,
 CONST 2)
CJUMP(LT,
 TEMP t38,
 CONST 0,
 _BADSUB,L3)
LABEL L3
CJUMP(GT,
 TEMP t38,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST -4)),
 _BADSUB,L4)
LABEL L4
MOVE(
 MEM(
  TEMP t39),
 MEM(
  BINOP(PLUS,
   TEMP t37,
   BINOP(MUL,
    TEMP t38,
    CONST 4))))
# Basic Blocks: 
#
LABEL L6
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
 CALL(
  NAME _initArray,
   CONST 9,
   NAME L1))
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L2)
#
LABEL L2
MOVE(
 TEMP t39,
 BINOP(PLUS,
  TEMP t36,
  CONST 0))
MOVE(
 TEMP t37,
 TEMP t35)
MOVE(
 TEMP t38,
 CONST 2)
CJUMP(LT,
 TEMP t38,
 CONST 0,
 _BADSUB,L3)
#
LABEL L3
CJUMP(GT,
 TEMP t38,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST -4)),
 _BADSUB,L4)
#
LABEL L4
MOVE(
 MEM(
  TEMP t39),
 MEM(
  BINOP(PLUS,
   TEMP t37,
   BINOP(MUL,
    TEMP t38,
    CONST 4))))
JUMP(
 NAME L5)
LABEL L5
# Trace Scheduled: 
LABEL L6
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
 CALL(
  NAME _initArray,
   CONST 9,
   NAME L1))
MOVE(
 TEMP t36,
 TEMP t34)
CJUMP(EQ,
 TEMP t36,
 CONST 0,
 _BADPTR,L2)
LABEL L2
MOVE(
 TEMP t39,
 BINOP(PLUS,
  TEMP t36,
  CONST 0))
MOVE(
 TEMP t37,
 TEMP t35)
MOVE(
 TEMP t38,
 CONST 2)
CJUMP(LT,
 TEMP t38,
 CONST 0,
 _BADSUB,L3)
LABEL L3
CJUMP(GT,
 TEMP t38,
 MEM(
  BINOP(PLUS,
   TEMP t37,
   CONST -4)),
 _BADSUB,L4)
LABEL L4
MOVE(
 MEM(
  TEMP t39),
 MEM(
  BINOP(PLUS,
   TEMP t37,
   BINOP(MUL,
    TEMP t38,
    CONST 4))))
JUMP(
 NAME L5)
LABEL L5
# Instructions: 
L6:
  li t40 1
	move $a0 t40
	jal _allocRecord
  move t33 $v0 
	la t41 L0
	sw t41 0(t33)
  move t34 t33 
  li t42 9
	move $a0 t42
	la t43 L1
	move $a1 t43
	jal _initArray
  move t35 $v0 
  move t36 t34 
  beq t36 0 _BADPTR  
L2:
	add t44 t36 0
  move t39 t44 
  move t37 t35 
  li t45 2
  move t38 t45 
	blt t38 0 _BADSUB  
L3:
	lw t46 -4(t37)
	bgt t38 t46 _BADSUB  
L4:
	sll t49 t38 2
	add t48 t37 t49 
	lw t47 (t48)
	sw t47 (t39)
  b  L5
L5:
END tigermain
	.data
	.word 0
L1:	.asciiz	""
	.data
	.word 5
L0:	.asciiz	"aname"
