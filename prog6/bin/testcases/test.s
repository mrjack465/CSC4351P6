PROCEDURE tigermain
# Before canonicalization: 
SEQ(
 SEQ(
  MOVE(
   TEMP t39,
   CONST 4),
  MOVE(
   TEMP t40,
   CONST 8)),
 MOVE(
  TEMP t41,
  BINOP(PLUS,
   CONST 9,
   TEMP t40)))
# After canonicalization: 
MOVE(
 TEMP t39,
 CONST 4)
MOVE(
 TEMP t40,
 CONST 8)
MOVE(
 TEMP t41,
 BINOP(PLUS,
  CONST 9,
  TEMP t40))
# Basic Blocks: 
#
LABEL L3
MOVE(
 TEMP t39,
 CONST 4)
MOVE(
 TEMP t40,
 CONST 8)
MOVE(
 TEMP t41,
 BINOP(PLUS,
  CONST 9,
  TEMP t40))
JUMP(
 NAME L2)
LABEL L2
# Trace Scheduled: 
LABEL L3
MOVE(
 TEMP t39,
 CONST 4)
MOVE(
 TEMP t40,
 CONST 8)
MOVE(
 TEMP t41,
 BINOP(PLUS,
  CONST 9,
  TEMP t40))
JUMP(
 NAME L2)
LABEL L2
# Instructions: 
L3:
  li t42 4
  move t39 t42 
  li t43 8
  move t40 t43 
	add t44 t40 9
  move t41 t44 
  b  L2
L2:
END tigermain
