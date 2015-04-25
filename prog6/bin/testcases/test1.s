PROCEDURE tigermain
# Before canonicalization: 
MOVE(
 TEMP $v0,
 ESEQ(
  MOVE(
   TEMP t33,
   CALL(
    NAME _initArray,
     CONST 10,
     CONST 0)),
  TEMP t33))
# After canonicalization: 
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 TEMP $v0,
 TEMP t33)
# Basic Blocks: 
#
LABEL L1
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 TEMP $v0,
 TEMP t33)
JUMP(
 NAME L0)
LABEL L0
# Trace Scheduled: 
LABEL L1
MOVE(
 TEMP t33,
 CALL(
  NAME _initArray,
   CONST 10,
   CONST 0))
MOVE(
 TEMP $v0,
 TEMP t33)
JUMP(
 NAME L0)
LABEL L0
# Instructions: 
END tigermain
