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
LABEL L3
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
JUMP(
 NAME L2)
LABEL L2
# Trace Scheduled: 
LABEL L3
MOVE(
 TEMP $v0,
 BINOP(PLUS,
  CONST 1,
  CONST 1))
JUMP(
 NAME L2)
LABEL L2
# Instructions: 
END tigermain
