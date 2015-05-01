PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 ESEQ(
  SEQ(
   SEQ(
    CJUMP(EQ,
     CONST 4,
     CONST 0,
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
 CONST 4,
 CONST 0,
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
 CONST 4,
 CONST 0,
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
 CONST 4,
 CONST 0,
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
  li t34 4
  beq t34 0 L0  
L1:
  li t35 5
  move t33 t35 
L2:
  move $v0 t33 
  b  L3
L0:
  li t36 1
  move t33 t36 
  b  L2
L3:
END tigermain
