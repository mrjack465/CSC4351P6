PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 ESEQ(
  SEQ(
   SEQ(
    CJUMP(EQ,
     BINOP(MINUS,
      CONST 0,
      CONST 4),
     BINOP(MINUS,
      CONST 0,
      CONST 0),
     L0,L1),
    SEQ(
     SEQ(
      LABEL L0,
      SEQ(
       MOVE(
        TEMP t33,
        CONST 1),
       JUMP(
        NAME L2))),
     SEQ(
      LABEL L1,
      SEQ(
       MOVE(
        TEMP t33,
        CONST 5),
       JUMP(
        NAME L2))))),
   LABEL L2),
  TEMP t33))
# After canonicalization: 
CJUMP(EQ,
 BINOP(MINUS,
  CONST 0,
  CONST 4),
 BINOP(MINUS,
  CONST 0,
  CONST 0),
 L0,L1)
LABEL L0
MOVE(
 TEMP t33,
 CONST 1)
JUMP(
 NAME L2)
LABEL L1
MOVE(
 TEMP t33,
 CONST 5)
JUMP(
 NAME L2)
LABEL L2
MOVE(
 TEMP $v0,
 TEMP t33)
# Basic Blocks: 
#
LABEL L4
CJUMP(EQ,
 BINOP(MINUS,
  CONST 0,
  CONST 4),
 BINOP(MINUS,
  CONST 0,
  CONST 0),
 L0,L1)
#
LABEL L0
MOVE(
 TEMP t33,
 CONST 1)
JUMP(
 NAME L2)
#
LABEL L1
MOVE(
 TEMP t33,
 CONST 5)
JUMP(
 NAME L2)
#
LABEL L2
MOVE(
 TEMP $v0,
 TEMP t33)
JUMP(
 NAME L3)
LABEL L3
# Trace Scheduled: 
LABEL L4
CJUMP(EQ,
 BINOP(MINUS,
  CONST 0,
  CONST 4),
 BINOP(MINUS,
  CONST 0,
  CONST 0),
 L0,L1)
LABEL L1
MOVE(
 TEMP t33,
 CONST 5)
LABEL L2
MOVE(
 TEMP $v0,
 TEMP t33)
JUMP(
 NAME L3)
LABEL L0
MOVE(
 TEMP t33,
 CONST 1)
JUMP(
 NAME L2)
LABEL L3
# Instructions: 
L4:
	sub t34 $0 4
	sub t35 $0 0
	beq t34 t35 L0
L1:
	li t36 5
	move t33 t36
L2:
	move $v0 t33
	b L3
L0:
	li t37 1
	move t33 t37
	b L2
L3:
END tigermain
