PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 BINOP(MUL,
  CONST 2,
  CONST 5))
# After canonicalization: 
MOVE(
 TEMP $v0,
 BINOP(MUL,
  CONST 2,
  CONST 5))
# Basic Blocks: 
#
LABEL L3
MOVE(
 TEMP $v0,
 BINOP(MUL,
  CONST 2,
  CONST 5))
JUMP(
 NAME L2)
LABEL L2
# Trace Scheduled: 
LABEL L3
MOVE(
 TEMP $v0,
 BINOP(MUL,
  CONST 2,
  CONST 5))
JUMP(
 NAME L2)
LABEL L2
# Instructions: 
L3:
    li t36 5
	sll t35 t36 1
    move $v0 t35
    b  L2
L2:
END tigermain
