PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
# After canonicalization: 
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
# Basic Blocks: 
#
LABEL L1
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
JUMP(
 NAME L0)
LABEL L0
# Trace Scheduled: 
LABEL L1
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
JUMP(
 NAME L0)
LABEL L0
# Instructions: 
L1:
	li t34 1
	add t33 t34 1
	move $v0 t33
	b L0
L0:
END tigermain
