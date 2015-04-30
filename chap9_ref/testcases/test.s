PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 0))
# After canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 0))
# Basic Blocks: 
#
LABEL L1
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 0))
JUMP(
 NAME L0)
LABEL L0
# Trace Scheduled: 
LABEL L1
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 3,
   CONST 0))
JUMP(
 NAME L0)
LABEL L0
# Instructions: 
L1:
	li t34 3
	move $a0 t34
	move $a1 $0
	jal _initArray
	move t33 $v0
	b L0
L0:
END tigermain
