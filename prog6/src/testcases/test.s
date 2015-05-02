PROCEDURE tigermain
# Before canonicalization: 
SEQ(
 MOVE(
  TEMP t33,
  CALL(
   NAME _initArray,
    CONST 3,
    CONST 1234)),
 MOVE(
  ESEQ(
   SEQ(
    MOVE(
     TEMP t34,
     TEMP t33),
    SEQ(
     MOVE(
      TEMP t35,
      CONST 1),
     SEQ(
      CJUMP(LT,
       TEMP t35,
       CONST 0,
       _BADSUB,L0),
      SEQ(
       LABEL L0,
       SEQ(
        CJUMP(GT,
         TEMP t35,
         MEM(
          BINOP(PLUS,
           TEMP t34,
           CONST -4)),
         _BADSUB,L1),
        LABEL L1))))),
   MEM(
    BINOP(PLUS,
     TEMP t34,
     BINOP(MUL,
      TEMP t35,
      CONST 4)))),
  CONST 50))
# After canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 1234))
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 CONST 1)
CJUMP(LT,
 TEMP t35,
 CONST 0,
 _BADSUB,L0)
LABEL L0
CJUMP(GT,
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP t34,
   CONST -4)),
 _BADSUB,L1)
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t34,
   BINOP(MUL,
    TEMP t35,
    CONST 4))),
 CONST 50)
# Basic Blocks: 
#
LABEL L3
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 1234))
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 CONST 1)
CJUMP(LT,
 TEMP t35,
 CONST 0,
 _BADSUB,L0)
#
LABEL L0
CJUMP(GT,
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP t34,
   CONST -4)),
 _BADSUB,L1)
#
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t34,
   BINOP(MUL,
    TEMP t35,
    CONST 4))),
 CONST 50)
JUMP(
 NAME L2)
LABEL L2
# Trace Scheduled: 
LABEL L3
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 1234))
MOVE(
 TEMP t34,
 TEMP t33)
MOVE(
 TEMP t35,
 CONST 1)
CJUMP(LT,
 TEMP t35,
 CONST 0,
 _BADSUB,L0)
LABEL L0
CJUMP(GT,
 TEMP t35,
 MEM(
  BINOP(PLUS,
   TEMP t34,
   CONST -4)),
 _BADSUB,L1)
LABEL L1
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t34,
   BINOP(MUL,
    TEMP t35,
    CONST 4))),
 CONST 50)
JUMP(
 NAME L2)
LABEL L2
# Instructions: 
L3:
  li t36 3
	move $a0 t36
  li t37 1234
	move $a1 t37
	jal _initArray
  move t33 $v0 
  move t34 t33 
  li t38 1
  move t35 t38 
	blt t35 0 _BADSUB  
L0:
	lw t39 -4(t34)
	bgt t35 t39 _BADSUB  
L1:
  li t40 50
	sll t42 t35 2
	add t41 t34 t42 
	sw t40 (t41)
  b  L2
L2:
END tigermain
