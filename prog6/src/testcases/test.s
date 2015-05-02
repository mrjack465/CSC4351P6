PROCEDURE tigermain
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP $fp,
        CONST -4)),
      CONST 8),
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP $fp,
        CONST -8)),
      CALL(
       NAME _initArray,
        MEM(
         BINOP(PLUS,
          TEMP $fp,
          CONST -4)),
        CONST 0))),
    MOVE(
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -12)),
     CALL(
      NAME _initArray,
       MEM(
        BINOP(PLUS,
         TEMP $fp,
         CONST -4)),
       CONST 0))),
   MOVE(
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST -16)),
    CALL(
     NAME _initArray,
      BINOP(MINUS,
       BINOP(PLUS,
        MEM(
         BINOP(PLUS,
          TEMP $fp,
          CONST -4)),
        MEM(
         BINOP(PLUS,
          TEMP $fp,
          CONST -4))),
       CONST 1),
      CONST 0))),
  MOVE(
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -20)),
   CALL(
    NAME _initArray,
     BINOP(MINUS,
      BINOP(PLUS,
       MEM(
        BINOP(PLUS,
         TEMP $fp,
         CONST -4)),
       MEM(
        BINOP(PLUS,
         TEMP $fp,
         CONST -4))),
      CONST 1),
     CONST 0))),
 EXP(
  CALL(
   NAME tigermain.try.1,
    TEMP $fp,
    CONST 0)))
# After canonicalization: 
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP $fp,
   CONST -4)),
 CONST 8)
MOVE(
 TEMP t65,
 BINOP(PLUS,
  TEMP $fp,
  CONST -8))
MOVE(
 TEMP t64,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t65),
 TEMP t64)
MOVE(
 TEMP t67,
 BINOP(PLUS,
  TEMP $fp,
  CONST -12))
MOVE(
 TEMP t66,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t67),
 TEMP t66)
MOVE(
 TEMP t69,
 BINOP(PLUS,
  TEMP $fp,
  CONST -16))
MOVE(
 TEMP t68,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t69),
 TEMP t68)
MOVE(
 TEMP t71,
 BINOP(PLUS,
  TEMP $fp,
  CONST -20))
MOVE(
 TEMP t70,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t71),
 TEMP t70)
EXP(
 CALL(
  NAME tigermain.try.1,
   TEMP $fp,
   CONST 0))
# Basic Blocks: 
#
LABEL L50
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP $fp,
   CONST -4)),
 CONST 8)
MOVE(
 TEMP t65,
 BINOP(PLUS,
  TEMP $fp,
  CONST -8))
MOVE(
 TEMP t64,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t65),
 TEMP t64)
MOVE(
 TEMP t67,
 BINOP(PLUS,
  TEMP $fp,
  CONST -12))
MOVE(
 TEMP t66,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t67),
 TEMP t66)
MOVE(
 TEMP t69,
 BINOP(PLUS,
  TEMP $fp,
  CONST -16))
MOVE(
 TEMP t68,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t69),
 TEMP t68)
MOVE(
 TEMP t71,
 BINOP(PLUS,
  TEMP $fp,
  CONST -20))
MOVE(
 TEMP t70,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t71),
 TEMP t70)
EXP(
 CALL(
  NAME tigermain.try.1,
   TEMP $fp,
   CONST 0))
JUMP(
 NAME L49)
LABEL L49
# Trace Scheduled: 
LABEL L50
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP $fp,
   CONST -4)),
 CONST 8)
MOVE(
 TEMP t65,
 BINOP(PLUS,
  TEMP $fp,
  CONST -8))
MOVE(
 TEMP t64,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t65),
 TEMP t64)
MOVE(
 TEMP t67,
 BINOP(PLUS,
  TEMP $fp,
  CONST -12))
MOVE(
 TEMP t66,
 CALL(
  NAME _initArray,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST -4)),
   CONST 0))
MOVE(
 MEM(
  TEMP t67),
 TEMP t66)
MOVE(
 TEMP t69,
 BINOP(PLUS,
  TEMP $fp,
  CONST -16))
MOVE(
 TEMP t68,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t69),
 TEMP t68)
MOVE(
 TEMP t71,
 BINOP(PLUS,
  TEMP $fp,
  CONST -20))
MOVE(
 TEMP t70,
 CALL(
  NAME _initArray,
   BINOP(MINUS,
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4)),
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST -4))),
    CONST 1),
   CONST 0))
MOVE(
 MEM(
  TEMP t71),
 TEMP t70)
EXP(
 CALL(
  NAME tigermain.try.1,
   TEMP $fp,
   CONST 0))
JUMP(
 NAME L49)
LABEL L49
# Instructions: 
L50:
  li t72 8
	sw t72 -4+tigermain_framesize($sp)
	add t73 $sp -8+tigermain_framesize
  move t65 t73 
	lw t74 -4+tigermain_framesize($sp)
	move $a0 t74
	move $a1 $0
	jal _initArray
  move t64 $v0 
	sw t64 (t65)
	add t75 $sp -12+tigermain_framesize
  move t67 t75 
	lw t76 -4+tigermain_framesize($sp)
	move $a0 t76
	move $a1 $0
	jal _initArray
  move t66 $v0 
	sw t66 (t67)
	add t77 $sp -16+tigermain_framesize
  move t69 t77 
	lw t80 -4+tigermain_framesize($sp)
	lw t81 -4+tigermain_framesize($sp)
	add t79 t80 t81 
	sub t78 t79 1
	move $a0 t78
	move $a1 $0
	jal _initArray
  move t68 $v0 
	sw t68 (t69)
	add t82 $sp -20+tigermain_framesize
  move t71 t82 
	lw t85 -4+tigermain_framesize($sp)
	lw t86 -4+tigermain_framesize($sp)
	add t84 t85 t86 
	sub t83 t84 1
	move $a0 t83
	move $a1 $0
	jal _initArray
  move t70 $v0 
	sw t70 (t71)
	addu t87 $sp tigermain_framesize
	move $a0 t87
	move $a1 $0
	jal tigermain.try.1
  b  L49
L49:
END tigermain
PROCEDURE tigermain.try.1
# Before canonicalization: 
SEQ(
 SEQ(
  CJUMP(EQ,
   TEMP t33,
   MEM(
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP $fp,
       CONST 0)),
     CONST -4)),
   L46,L47),
  SEQ(
   SEQ(
    SEQ(
     LABEL L46,
     EXP(
      CALL(
       NAME tigermain.printboard.0,
        MEM(
         BINOP(PLUS,
          TEMP $fp,
          CONST 0))))),
    JUMP(
     NAME L48)),
   SEQ(
    SEQ(
     LABEL L47,
     SEQ(
      SEQ(
       SEQ(
        SEQ(
         MOVE(
          TEMP t41,
          CONST 0),
         MOVE(
          TEMP t62,
          BINOP(MINUS,
           MEM(
            BINOP(PLUS,
             MEM(
              BINOP(PLUS,
               TEMP $fp,
               CONST 0)),
             CONST -4)),
           CONST 1))),
        CJUMP(LE,
         TEMP t41,
         TEMP t62,
         L44,L14)),
       SEQ(
        SEQ(
         SEQ(
          LABEL L44,
          SEQ(
           SEQ(
            SEQ(
             SEQ(
              CJUMP(EQ,
               ESEQ(
                SEQ(
                 MOVE(
                  TEMP t42,
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP $fp,
                      CONST 0)),
                    CONST -8))),
                 SEQ(
                  MOVE(
                   TEMP t43,
                   TEMP t41),
                  SEQ(
                   CJUMP(LT,
                    TEMP t43,
                    CONST 0,
                    _BADSUB,L15),
                   SEQ(
                    LABEL L15,
                    SEQ(
                     CJUMP(GT,
                      TEMP t43,
                      MEM(
                       BINOP(PLUS,
                        TEMP t42,
                        CONST -4)),
                      _BADSUB,L16),
                     LABEL L16))))),
                MEM(
                 BINOP(PLUS,
                  TEMP t42,
                  BINOP(MUL,
                   TEMP t43,
                   CONST 4)))),
               CONST 0,
               L19,L42),
              SEQ(
               LABEL L19,
               CJUMP(EQ,
                ESEQ(
                 SEQ(
                  MOVE(
                   TEMP t44,
                   MEM(
                    BINOP(PLUS,
                     MEM(
                      BINOP(PLUS,
                       TEMP $fp,
                       CONST 0)),
                     CONST -16))),
                  SEQ(
                   MOVE(
                    TEMP t45,
                    BINOP(PLUS,
                     TEMP t41,
                     TEMP t33)),
                   SEQ(
                    CJUMP(LT,
                     TEMP t45,
                     CONST 0,
                     _BADSUB,L17),
                    SEQ(
                     LABEL L17,
                     SEQ(
                      CJUMP(GT,
                       TEMP t45,
                       MEM(
                        BINOP(PLUS,
                         TEMP t44,
                         CONST -4)),
                       _BADSUB,L18),
                      LABEL L18))))),
                 MEM(
                  BINOP(PLUS,
                   TEMP t44,
                   BINOP(MUL,
                    TEMP t45,
                    CONST 4)))),
                CONST 0,
                L24,L42))),
             SEQ(
              LABEL L24,
              CJUMP(EQ,
               ESEQ(
                SEQ(
                 MOVE(
                  TEMP t46,
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP $fp,
                      CONST 0)),
                    CONST -20))),
                 SEQ(
                  MOVE(
                   TEMP t47,
                   BINOP(MINUS,
                    BINOP(PLUS,
                     TEMP t41,
                     CONST 7),
                    TEMP t33)),
                  SEQ(
                   CJUMP(LT,
                    TEMP t47,
                    CONST 0,
                    _BADSUB,L22),
                   SEQ(
                    LABEL L22,
                    SEQ(
                     CJUMP(GT,
                      TEMP t47,
                      MEM(
                       BINOP(PLUS,
                        TEMP t46,
                        CONST -4)),
                      _BADSUB,L23),
                     LABEL L23))))),
                MEM(
                 BINOP(PLUS,
                  TEMP t46,
                  BINOP(MUL,
                   TEMP t47,
                   CONST 4)))),
               CONST 0,
               L41,L42))),
            SEQ(
             SEQ(
              SEQ(
               LABEL L41,
               SEQ(
                SEQ(
                 SEQ(
                  SEQ(
                   SEQ(
                    SEQ(
                     SEQ(
                      MOVE(
                       ESEQ(
                        SEQ(
                         MOVE(
                          TEMP t48,
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP $fp,
                              CONST 0)),
                            CONST -8))),
                         SEQ(
                          MOVE(
                           TEMP t49,
                           TEMP t41),
                          SEQ(
                           CJUMP(LT,
                            TEMP t49,
                            CONST 0,
                            _BADSUB,L27),
                           SEQ(
                            LABEL L27,
                            SEQ(
                             CJUMP(GT,
                              TEMP t49,
                              MEM(
                               BINOP(PLUS,
                                TEMP t48,
                                CONST -4)),
                              _BADSUB,L28),
                             LABEL L28))))),
                        MEM(
                         BINOP(PLUS,
                          TEMP t48,
                          BINOP(MUL,
                           TEMP t49,
                           CONST 4)))),
                       CONST 1),
                      MOVE(
                       ESEQ(
                        SEQ(
                         MOVE(
                          TEMP t50,
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP $fp,
                              CONST 0)),
                            CONST -16))),
                         SEQ(
                          MOVE(
                           TEMP t51,
                           BINOP(PLUS,
                            TEMP t41,
                            TEMP t33)),
                          SEQ(
                           CJUMP(LT,
                            TEMP t51,
                            CONST 0,
                            _BADSUB,L29),
                           SEQ(
                            LABEL L29,
                            SEQ(
                             CJUMP(GT,
                              TEMP t51,
                              MEM(
                               BINOP(PLUS,
                                TEMP t50,
                                CONST -4)),
                              _BADSUB,L30),
                             LABEL L30))))),
                        MEM(
                         BINOP(PLUS,
                          TEMP t50,
                          BINOP(MUL,
                           TEMP t51,
                           CONST 4)))),
                       CONST 1)),
                     MOVE(
                      ESEQ(
                       SEQ(
                        MOVE(
                         TEMP t52,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP $fp,
                             CONST 0)),
                           CONST -20))),
                        SEQ(
                         MOVE(
                          TEMP t53,
                          BINOP(MINUS,
                           BINOP(PLUS,
                            TEMP t41,
                            CONST 7),
                           TEMP t33)),
                         SEQ(
                          CJUMP(LT,
                           TEMP t53,
                           CONST 0,
                           _BADSUB,L31),
                          SEQ(
                           LABEL L31,
                           SEQ(
                            CJUMP(GT,
                             TEMP t53,
                             MEM(
                              BINOP(PLUS,
                               TEMP t52,
                               CONST -4)),
                             _BADSUB,L32),
                            LABEL L32))))),
                       MEM(
                        BINOP(PLUS,
                         TEMP t52,
                         BINOP(MUL,
                          TEMP t53,
                          CONST 4)))),
                      CONST 1)),
                    MOVE(
                     ESEQ(
                      SEQ(
                       MOVE(
                        TEMP t54,
                        MEM(
                         BINOP(PLUS,
                          MEM(
                           BINOP(PLUS,
                            TEMP $fp,
                            CONST 0)),
                          CONST -12))),
                       SEQ(
                        MOVE(
                         TEMP t55,
                         TEMP t33),
                        SEQ(
                         CJUMP(LT,
                          TEMP t55,
                          CONST 0,
                          _BADSUB,L33),
                         SEQ(
                          LABEL L33,
                          SEQ(
                           CJUMP(GT,
                            TEMP t55,
                            MEM(
                             BINOP(PLUS,
                              TEMP t54,
                              CONST -4)),
                            _BADSUB,L34),
                           LABEL L34))))),
                      MEM(
                       BINOP(PLUS,
                        TEMP t54,
                        BINOP(MUL,
                         TEMP t55,
                         CONST 4)))),
                     TEMP t41)),
                   EXP(
                    CALL(
                     NAME tigermain.try.1,
                      MEM(
                       BINOP(PLUS,
                        TEMP $fp,
                        CONST 0)),
                      BINOP(PLUS,
                       TEMP t33,
                       CONST 1)))),
                  MOVE(
                   ESEQ(
                    SEQ(
                     MOVE(
                      TEMP t56,
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP $fp,
                          CONST 0)),
                        CONST -8))),
                     SEQ(
                      MOVE(
                       TEMP t57,
                       TEMP t41),
                      SEQ(
                       CJUMP(LT,
                        TEMP t57,
                        CONST 0,
                        _BADSUB,L35),
                       SEQ(
                        LABEL L35,
                        SEQ(
                         CJUMP(GT,
                          TEMP t57,
                          MEM(
                           BINOP(PLUS,
                            TEMP t56,
                            CONST -4)),
                          _BADSUB,L36),
                         LABEL L36))))),
                    MEM(
                     BINOP(PLUS,
                      TEMP t56,
                      BINOP(MUL,
                       TEMP t57,
                       CONST 4)))),
                   CONST 0)),
                 MOVE(
                  ESEQ(
                   SEQ(
                    MOVE(
                     TEMP t58,
                     MEM(
                      BINOP(PLUS,
                       MEM(
                        BINOP(PLUS,
                         TEMP $fp,
                         CONST 0)),
                       CONST -16))),
                    SEQ(
                     MOVE(
                      TEMP t59,
                      BINOP(PLUS,
                       TEMP t41,
                       TEMP t33)),
                     SEQ(
                      CJUMP(LT,
                       TEMP t59,
                       CONST 0,
                       _BADSUB,L37),
                      SEQ(
                       LABEL L37,
                       SEQ(
                        CJUMP(GT,
                         TEMP t59,
                         MEM(
                          BINOP(PLUS,
                           TEMP t58,
                           CONST -4)),
                         _BADSUB,L38),
                        LABEL L38))))),
                   MEM(
                    BINOP(PLUS,
                     TEMP t58,
                     BINOP(MUL,
                      TEMP t59,
                      CONST 4)))),
                  CONST 0)),
                MOVE(
                 ESEQ(
                  SEQ(
                   MOVE(
                    TEMP t60,
                    MEM(
                     BINOP(PLUS,
                      MEM(
                       BINOP(PLUS,
                        TEMP $fp,
                        CONST 0)),
                      CONST -20))),
                   SEQ(
                    MOVE(
                     TEMP t61,
                     BINOP(MINUS,
                      BINOP(PLUS,
                       TEMP t41,
                       CONST 7),
                      TEMP t33)),
                    SEQ(
                     CJUMP(LT,
                      TEMP t61,
                      CONST 0,
                      _BADSUB,L39),
                     SEQ(
                      LABEL L39,
                      SEQ(
                       CJUMP(GT,
                        TEMP t61,
                        MEM(
                         BINOP(PLUS,
                          TEMP t60,
                          CONST -4)),
                        _BADSUB,L40),
                       LABEL L40))))),
                  MEM(
                   BINOP(PLUS,
                    TEMP t60,
                    BINOP(MUL,
                     TEMP t61,
                     CONST 4)))),
                 CONST 0))),
              JUMP(
               NAME L43)),
             SEQ(
              SEQ(
               LABEL L42,
               EXP(
                CONST 0)),
              JUMP(
               NAME L43)))),
           LABEL L43)),
         CJUMP(LT,
          TEMP t41,
          TEMP t62,
          L45,L14)),
        SEQ(
         SEQ(
          LABEL L45,
          MOVE(
           TEMP t41,
           BINOP(PLUS,
            TEMP t41,
            CONST 1))),
         JUMP(
          NAME L44)))),
      LABEL L14)),
    JUMP(
     NAME L48)))),
 LABEL L48)
# After canonicalization: 
CJUMP(EQ,
 TEMP t33,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -4)),
 L46,L47)
LABEL L46
EXP(
 CALL(
  NAME tigermain.printboard.0,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0))))
JUMP(
 NAME L48)
LABEL L47
MOVE(
 TEMP t41,
 CONST 0)
MOVE(
 TEMP t62,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t41,
 TEMP t62,
 L44,L14)
LABEL L44
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t43,
 TEMP t41)
CJUMP(LT,
 TEMP t43,
 CONST 0,
 _BADSUB,L15)
LABEL L15
CJUMP(GT,
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST -4)),
 _BADSUB,L16)
LABEL L16
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   BINOP(MUL,
    TEMP t43,
    CONST 4))),
 CONST 0,
 L19,L42)
LABEL L19
MOVE(
 TEMP t44,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t45,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t45,
 CONST 0,
 _BADSUB,L17)
LABEL L17
CJUMP(GT,
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   CONST -4)),
 _BADSUB,L18)
LABEL L18
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   BINOP(MUL,
    TEMP t45,
    CONST 4))),
 CONST 0,
 L24,L42)
LABEL L24
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t47,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t47,
 CONST 0,
 _BADSUB,L22)
LABEL L22
CJUMP(GT,
 TEMP t47,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   CONST -4)),
 _BADSUB,L23)
LABEL L23
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   BINOP(MUL,
    TEMP t47,
    CONST 4))),
 CONST 0,
 L41,L42)
LABEL L41
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t49,
 TEMP t41)
CJUMP(LT,
 TEMP t49,
 CONST 0,
 _BADSUB,L27)
LABEL L27
CJUMP(GT,
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP t48,
   CONST -4)),
 _BADSUB,L28)
LABEL L28
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t48,
   BINOP(MUL,
    TEMP t49,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t50,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t51,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t51,
 CONST 0,
 _BADSUB,L29)
LABEL L29
CJUMP(GT,
 TEMP t51,
 MEM(
  BINOP(PLUS,
   TEMP t50,
   CONST -4)),
 _BADSUB,L30)
LABEL L30
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t50,
   BINOP(MUL,
    TEMP t51,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t52,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t53,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t53,
 CONST 0,
 _BADSUB,L31)
LABEL L31
CJUMP(GT,
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP t52,
   CONST -4)),
 _BADSUB,L32)
LABEL L32
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t52,
   BINOP(MUL,
    TEMP t53,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t55,
 TEMP t33)
CJUMP(LT,
 TEMP t55,
 CONST 0,
 _BADSUB,L33)
LABEL L33
CJUMP(GT,
 TEMP t55,
 MEM(
  BINOP(PLUS,
   TEMP t54,
   CONST -4)),
 _BADSUB,L34)
LABEL L34
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t54,
   BINOP(MUL,
    TEMP t55,
    CONST 4))),
 TEMP t41)
EXP(
 CALL(
  NAME tigermain.try.1,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   BINOP(PLUS,
    TEMP t33,
    CONST 1)))
MOVE(
 TEMP t56,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t57,
 TEMP t41)
CJUMP(LT,
 TEMP t57,
 CONST 0,
 _BADSUB,L35)
LABEL L35
CJUMP(GT,
 TEMP t57,
 MEM(
  BINOP(PLUS,
   TEMP t56,
   CONST -4)),
 _BADSUB,L36)
LABEL L36
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t56,
   BINOP(MUL,
    TEMP t57,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t58,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t59,
 CONST 0,
 _BADSUB,L37)
LABEL L37
CJUMP(GT,
 TEMP t59,
 MEM(
  BINOP(PLUS,
   TEMP t58,
   CONST -4)),
 _BADSUB,L38)
LABEL L38
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t58,
   BINOP(MUL,
    TEMP t59,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t60,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t61,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t61,
 CONST 0,
 _BADSUB,L39)
LABEL L39
CJUMP(GT,
 TEMP t61,
 MEM(
  BINOP(PLUS,
   TEMP t60,
   CONST -4)),
 _BADSUB,L40)
LABEL L40
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t60,
   BINOP(MUL,
    TEMP t61,
    CONST 4))),
 CONST 0)
JUMP(
 NAME L43)
LABEL L42
JUMP(
 NAME L43)
LABEL L43
CJUMP(LT,
 TEMP t41,
 TEMP t62,
 L45,L14)
LABEL L45
MOVE(
 TEMP t41,
 BINOP(PLUS,
  TEMP t41,
  CONST 1))
JUMP(
 NAME L44)
LABEL L14
JUMP(
 NAME L48)
LABEL L48
# Basic Blocks: 
#
LABEL L52
CJUMP(EQ,
 TEMP t33,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -4)),
 L46,L47)
#
LABEL L46
EXP(
 CALL(
  NAME tigermain.printboard.0,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0))))
JUMP(
 NAME L48)
#
LABEL L47
MOVE(
 TEMP t41,
 CONST 0)
MOVE(
 TEMP t62,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t41,
 TEMP t62,
 L44,L14)
#
LABEL L44
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t43,
 TEMP t41)
CJUMP(LT,
 TEMP t43,
 CONST 0,
 _BADSUB,L15)
#
LABEL L15
CJUMP(GT,
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST -4)),
 _BADSUB,L16)
#
LABEL L16
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   BINOP(MUL,
    TEMP t43,
    CONST 4))),
 CONST 0,
 L19,L42)
#
LABEL L19
MOVE(
 TEMP t44,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t45,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t45,
 CONST 0,
 _BADSUB,L17)
#
LABEL L17
CJUMP(GT,
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   CONST -4)),
 _BADSUB,L18)
#
LABEL L18
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   BINOP(MUL,
    TEMP t45,
    CONST 4))),
 CONST 0,
 L24,L42)
#
LABEL L24
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t47,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t47,
 CONST 0,
 _BADSUB,L22)
#
LABEL L22
CJUMP(GT,
 TEMP t47,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   CONST -4)),
 _BADSUB,L23)
#
LABEL L23
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   BINOP(MUL,
    TEMP t47,
    CONST 4))),
 CONST 0,
 L41,L42)
#
LABEL L41
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t49,
 TEMP t41)
CJUMP(LT,
 TEMP t49,
 CONST 0,
 _BADSUB,L27)
#
LABEL L27
CJUMP(GT,
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP t48,
   CONST -4)),
 _BADSUB,L28)
#
LABEL L28
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t48,
   BINOP(MUL,
    TEMP t49,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t50,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t51,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t51,
 CONST 0,
 _BADSUB,L29)
#
LABEL L29
CJUMP(GT,
 TEMP t51,
 MEM(
  BINOP(PLUS,
   TEMP t50,
   CONST -4)),
 _BADSUB,L30)
#
LABEL L30
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t50,
   BINOP(MUL,
    TEMP t51,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t52,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t53,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t53,
 CONST 0,
 _BADSUB,L31)
#
LABEL L31
CJUMP(GT,
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP t52,
   CONST -4)),
 _BADSUB,L32)
#
LABEL L32
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t52,
   BINOP(MUL,
    TEMP t53,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t55,
 TEMP t33)
CJUMP(LT,
 TEMP t55,
 CONST 0,
 _BADSUB,L33)
#
LABEL L33
CJUMP(GT,
 TEMP t55,
 MEM(
  BINOP(PLUS,
   TEMP t54,
   CONST -4)),
 _BADSUB,L34)
#
LABEL L34
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t54,
   BINOP(MUL,
    TEMP t55,
    CONST 4))),
 TEMP t41)
EXP(
 CALL(
  NAME tigermain.try.1,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   BINOP(PLUS,
    TEMP t33,
    CONST 1)))
MOVE(
 TEMP t56,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t57,
 TEMP t41)
CJUMP(LT,
 TEMP t57,
 CONST 0,
 _BADSUB,L35)
#
LABEL L35
CJUMP(GT,
 TEMP t57,
 MEM(
  BINOP(PLUS,
   TEMP t56,
   CONST -4)),
 _BADSUB,L36)
#
LABEL L36
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t56,
   BINOP(MUL,
    TEMP t57,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t58,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t59,
 CONST 0,
 _BADSUB,L37)
#
LABEL L37
CJUMP(GT,
 TEMP t59,
 MEM(
  BINOP(PLUS,
   TEMP t58,
   CONST -4)),
 _BADSUB,L38)
#
LABEL L38
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t58,
   BINOP(MUL,
    TEMP t59,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t60,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t61,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t61,
 CONST 0,
 _BADSUB,L39)
#
LABEL L39
CJUMP(GT,
 TEMP t61,
 MEM(
  BINOP(PLUS,
   TEMP t60,
   CONST -4)),
 _BADSUB,L40)
#
LABEL L40
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t60,
   BINOP(MUL,
    TEMP t61,
    CONST 4))),
 CONST 0)
JUMP(
 NAME L43)
#
LABEL L42
JUMP(
 NAME L43)
#
LABEL L43
CJUMP(LT,
 TEMP t41,
 TEMP t62,
 L45,L14)
#
LABEL L45
MOVE(
 TEMP t41,
 BINOP(PLUS,
  TEMP t41,
  CONST 1))
JUMP(
 NAME L44)
#
LABEL L14
JUMP(
 NAME L48)
#
LABEL L48
JUMP(
 NAME L51)
LABEL L51
# Trace Scheduled: 
LABEL L52
CJUMP(EQ,
 TEMP t33,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -4)),
 L46,L47)
LABEL L47
MOVE(
 TEMP t41,
 CONST 0)
MOVE(
 TEMP t62,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t41,
 TEMP t62,
 L44,L14)
LABEL L14
LABEL L48
JUMP(
 NAME L51)
LABEL L46
EXP(
 CALL(
  NAME tigermain.printboard.0,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0))))
JUMP(
 NAME L48)
LABEL L44
MOVE(
 TEMP t42,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t43,
 TEMP t41)
CJUMP(LT,
 TEMP t43,
 CONST 0,
 _BADSUB,L15)
LABEL L15
CJUMP(GT,
 TEMP t43,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   CONST -4)),
 _BADSUB,L16)
LABEL L16
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t42,
   BINOP(MUL,
    TEMP t43,
    CONST 4))),
 CONST 0,
 L19,L42)
LABEL L42
LABEL L43
CJUMP(GE,
 TEMP t41,
 TEMP t62,
 L14,L45)
LABEL L45
MOVE(
 TEMP t41,
 BINOP(PLUS,
  TEMP t41,
  CONST 1))
JUMP(
 NAME L44)
LABEL L19
MOVE(
 TEMP t44,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t45,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t45,
 CONST 0,
 _BADSUB,L17)
LABEL L17
CJUMP(GT,
 TEMP t45,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   CONST -4)),
 _BADSUB,L18)
LABEL L18
CJUMP(NE,
 MEM(
  BINOP(PLUS,
   TEMP t44,
   BINOP(MUL,
    TEMP t45,
    CONST 4))),
 CONST 0,
 L42,L24)
LABEL L24
MOVE(
 TEMP t46,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t47,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t47,
 CONST 0,
 _BADSUB,L22)
LABEL L22
CJUMP(GT,
 TEMP t47,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   CONST -4)),
 _BADSUB,L23)
LABEL L23
CJUMP(NE,
 MEM(
  BINOP(PLUS,
   TEMP t46,
   BINOP(MUL,
    TEMP t47,
    CONST 4))),
 CONST 0,
 L42,L41)
LABEL L41
MOVE(
 TEMP t48,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t49,
 TEMP t41)
CJUMP(LT,
 TEMP t49,
 CONST 0,
 _BADSUB,L27)
LABEL L27
CJUMP(GT,
 TEMP t49,
 MEM(
  BINOP(PLUS,
   TEMP t48,
   CONST -4)),
 _BADSUB,L28)
LABEL L28
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t48,
   BINOP(MUL,
    TEMP t49,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t50,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t51,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t51,
 CONST 0,
 _BADSUB,L29)
LABEL L29
CJUMP(GT,
 TEMP t51,
 MEM(
  BINOP(PLUS,
   TEMP t50,
   CONST -4)),
 _BADSUB,L30)
LABEL L30
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t50,
   BINOP(MUL,
    TEMP t51,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t52,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t53,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t53,
 CONST 0,
 _BADSUB,L31)
LABEL L31
CJUMP(GT,
 TEMP t53,
 MEM(
  BINOP(PLUS,
   TEMP t52,
   CONST -4)),
 _BADSUB,L32)
LABEL L32
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t52,
   BINOP(MUL,
    TEMP t53,
    CONST 4))),
 CONST 1)
MOVE(
 TEMP t54,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t55,
 TEMP t33)
CJUMP(LT,
 TEMP t55,
 CONST 0,
 _BADSUB,L33)
LABEL L33
CJUMP(GT,
 TEMP t55,
 MEM(
  BINOP(PLUS,
   TEMP t54,
   CONST -4)),
 _BADSUB,L34)
LABEL L34
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t54,
   BINOP(MUL,
    TEMP t55,
    CONST 4))),
 TEMP t41)
EXP(
 CALL(
  NAME tigermain.try.1,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   BINOP(PLUS,
    TEMP t33,
    CONST 1)))
MOVE(
 TEMP t56,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -8)))
MOVE(
 TEMP t57,
 TEMP t41)
CJUMP(LT,
 TEMP t57,
 CONST 0,
 _BADSUB,L35)
LABEL L35
CJUMP(GT,
 TEMP t57,
 MEM(
  BINOP(PLUS,
   TEMP t56,
   CONST -4)),
 _BADSUB,L36)
LABEL L36
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t56,
   BINOP(MUL,
    TEMP t57,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t58,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -16)))
MOVE(
 TEMP t59,
 BINOP(PLUS,
  TEMP t41,
  TEMP t33))
CJUMP(LT,
 TEMP t59,
 CONST 0,
 _BADSUB,L37)
LABEL L37
CJUMP(GT,
 TEMP t59,
 MEM(
  BINOP(PLUS,
   TEMP t58,
   CONST -4)),
 _BADSUB,L38)
LABEL L38
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t58,
   BINOP(MUL,
    TEMP t59,
    CONST 4))),
 CONST 0)
MOVE(
 TEMP t60,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -20)))
MOVE(
 TEMP t61,
 BINOP(MINUS,
  BINOP(PLUS,
   TEMP t41,
   CONST 7),
  TEMP t33))
CJUMP(LT,
 TEMP t61,
 CONST 0,
 _BADSUB,L39)
LABEL L39
CJUMP(GT,
 TEMP t61,
 MEM(
  BINOP(PLUS,
   TEMP t60,
   CONST -4)),
 _BADSUB,L40)
LABEL L40
MOVE(
 MEM(
  BINOP(PLUS,
   TEMP t60,
   BINOP(MUL,
    TEMP t61,
    CONST 4))),
 CONST 0)
JUMP(
 NAME L43)
LABEL L51
# Instructions: 
L52:
	lw t89 0+tigermain.try.1_framesize($sp)
	lw t88 -4(t89)
  beq t33 t88 L46  
L47:
  move t41 $0 
	lw t92 0+tigermain.try.1_framesize($sp)
	lw t91 -4(t92)
	sub t90 t91 1
  move t62 t90 
	ble t41 t62 L44  
L14:
L48:
  b  L51
L46:
	lw t93 0+tigermain.try.1_framesize($sp)
	move $a0 t93
	jal tigermain.printboard.0
  b  L48
L44:
	lw t95 0+tigermain.try.1_framesize($sp)
	lw t94 -8(t95)
  move t43 t41 
	blt t43 0 _BADSUB  
L15:
	lw t96 -4(t42)
	bgt t43 t96 _BADSUB  
L16:
	sll t99 t43 2
	add t98 t42 t99 
	lw t97 (t98)
  beq t97 0 L19  
L42:
L43:
	bge t41 t62 L14  
L45:
  move t41 t100 
  b  L44
L19:
	lw t102 0+tigermain.try.1_framesize($sp)
	lw t101 -16(t102)
	add t103 t41 t33 
  move t45 t103 
	blt t45 0 _BADSUB  
L17:
	lw t104 -4(t44)
	bgt t45 t104 _BADSUB  
L18:
	sll t107 t45 2
	add t106 t44 t107 
	lw t105 (t106)
  beq t105 0 L42  
L24:
	lw t109 0+tigermain.try.1_framesize($sp)
	lw t108 -20(t109)
	sub t110 t111 t33 
  move t47 t110 
	blt t47 0 _BADSUB  
L22:
	lw t112 -4(t46)
	bgt t47 t112 _BADSUB  
L23:
	sll t115 t47 2
	add t114 t46 t115 
	lw t113 (t114)
  beq t113 0 L42  
L41:
	lw t117 0+tigermain.try.1_framesize($sp)
	lw t116 -8(t117)
  move t49 t41 
	blt t49 0 _BADSUB  
L27:
	lw t118 -4(t48)
	bgt t49 t118 _BADSUB  
L28:
  li t119 1
	sll t121 t49 2
	add t120 t48 t121 
	sw t119 (t120)
	lw t123 0+tigermain.try.1_framesize($sp)
	lw t122 -16(t123)
	add t124 t41 t33 
  move t51 t124 
	blt t51 0 _BADSUB  
L29:
	lw t125 -4(t50)
	bgt t51 t125 _BADSUB  
L30:
  li t126 1
	sll t128 t51 2
	add t127 t50 t128 
	sw t126 (t127)
	lw t130 0+tigermain.try.1_framesize($sp)
	lw t129 -20(t130)
	sub t131 t132 t33 
  move t53 t131 
	blt t53 0 _BADSUB  
L31:
	lw t133 -4(t52)
	bgt t53 t133 _BADSUB  
L32:
  li t134 1
	sll t136 t53 2
	add t135 t52 t136 
	sw t134 (t135)
	lw t138 0+tigermain.try.1_framesize($sp)
	lw t137 -12(t138)
  move t55 t33 
	blt t55 0 _BADSUB  
L33:
	lw t139 -4(t54)
	bgt t55 t139 _BADSUB  
L34:
	sll t141 t55 2
	add t140 t54 t141 
	sw t41 (t140)
	lw t142 0+tigermain.try.1_framesize($sp)
	move $a0 t142
	move $a1 t143
	jal tigermain.try.1
	lw t145 0+tigermain.try.1_framesize($sp)
	lw t144 -8(t145)
  move t57 t41 
	blt t57 0 _BADSUB  
L35:
	lw t146 -4(t56)
	bgt t57 t146 _BADSUB  
L36:
	sll t148 t57 2
	add t147 t56 t148 
	sw $0 (t147)
	lw t150 0+tigermain.try.1_framesize($sp)
	lw t149 -16(t150)
	add t151 t41 t33 
  move t59 t151 
	blt t59 0 _BADSUB  
L37:
	lw t152 -4(t58)
	bgt t59 t152 _BADSUB  
L38:
	sll t154 t59 2
	add t153 t58 t154 
	sw $0 (t153)
	lw t156 0+tigermain.try.1_framesize($sp)
	lw t155 -20(t156)
	sub t157 t158 t33 
  move t61 t157 
	blt t61 0 _BADSUB  
L39:
	lw t159 -4(t60)
	bgt t61 t159 _BADSUB  
L40:
	sll t161 t61 2
	add t160 t60 t161 
	sw $0 (t160)
  b  L43
L51:
END tigermain.try.1
PROCEDURE tigermain.printboard.0
# Before canonicalization: 
SEQ(
 SEQ(
  SEQ(
   SEQ(
    SEQ(
     MOVE(
      TEMP t34,
      CONST 0),
     MOVE(
      TEMP t40,
      BINOP(MINUS,
       MEM(
        BINOP(PLUS,
         MEM(
          BINOP(PLUS,
           TEMP $fp,
           CONST 0)),
         CONST -4)),
       CONST 1))),
    CJUMP(LE,
     TEMP t34,
     TEMP t40,
     L12,L0)),
   SEQ(
    SEQ(
     SEQ(
      LABEL L12,
      SEQ(
       SEQ(
        SEQ(
         SEQ(
          SEQ(
           MOVE(
            TEMP t35,
            CONST 0),
           MOVE(
            TEMP t39,
            BINOP(MINUS,
             MEM(
              BINOP(PLUS,
               MEM(
                BINOP(PLUS,
                 TEMP $fp,
                 CONST 0)),
               CONST -4)),
             CONST 1))),
          CJUMP(LE,
           TEMP t35,
           TEMP t39,
           L9,L1)),
         SEQ(
          SEQ(
           SEQ(
            LABEL L9,
            EXP(
             CALL(
              NAME _print,
               ESEQ(
                SEQ(
                 SEQ(
                  CJUMP(EQ,
                   ESEQ(
                    SEQ(
                     MOVE(
                      TEMP t36,
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP $fp,
                          CONST 0)),
                        CONST -12))),
                     SEQ(
                      MOVE(
                       TEMP t37,
                       TEMP t34),
                      SEQ(
                       CJUMP(LT,
                        TEMP t37,
                        CONST 0,
                        _BADSUB,L2),
                       SEQ(
                        LABEL L2,
                        SEQ(
                         CJUMP(GT,
                          TEMP t37,
                          MEM(
                           BINOP(PLUS,
                            TEMP t36,
                            CONST -4)),
                          _BADSUB,L3),
                         LABEL L3))))),
                    MEM(
                     BINOP(PLUS,
                      TEMP t36,
                      BINOP(MUL,
                       TEMP t37,
                       CONST 4)))),
                   TEMP t35,
                   L6,L7),
                  SEQ(
                   SEQ(
                    LABEL L6,
                    SEQ(
                     MOVE(
                      TEMP t38,
                      NAME L4),
                     JUMP(
                      NAME L8))),
                   SEQ(
                    LABEL L7,
                    SEQ(
                     MOVE(
                      TEMP t38,
                      NAME L5),
                     JUMP(
                      NAME L8))))),
                 LABEL L8),
                TEMP t38)))),
           CJUMP(LT,
            TEMP t35,
            TEMP t39,
            L10,L1)),
          SEQ(
           SEQ(
            LABEL L10,
            MOVE(
             TEMP t35,
             BINOP(PLUS,
              TEMP t35,
              CONST 1))),
           JUMP(
            NAME L9)))),
        LABEL L1),
       EXP(
        CALL(
         NAME _print,
          NAME L11)))),
     CJUMP(LT,
      TEMP t34,
      TEMP t40,
      L13,L0)),
    SEQ(
     SEQ(
      LABEL L13,
      MOVE(
       TEMP t34,
       BINOP(PLUS,
        TEMP t34,
        CONST 1))),
     JUMP(
      NAME L12)))),
  LABEL L0),
 EXP(
  CALL(
   NAME _print,
    NAME L11)))
# After canonicalization: 
MOVE(
 TEMP t34,
 CONST 0)
MOVE(
 TEMP t40,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t34,
 TEMP t40,
 L12,L0)
LABEL L12
MOVE(
 TEMP t35,
 CONST 0)
MOVE(
 TEMP t39,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t35,
 TEMP t39,
 L9,L1)
LABEL L9
MOVE(
 TEMP t36,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t37,
 TEMP t34)
CJUMP(LT,
 TEMP t37,
 CONST 0,
 _BADSUB,L2)
LABEL L2
CJUMP(GT,
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST -4)),
 _BADSUB,L3)
LABEL L3
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   BINOP(MUL,
    TEMP t37,
    CONST 4))),
 TEMP t35,
 L6,L7)
LABEL L6
MOVE(
 TEMP t38,
 NAME L4)
JUMP(
 NAME L8)
LABEL L7
MOVE(
 TEMP t38,
 NAME L5)
JUMP(
 NAME L8)
LABEL L8
EXP(
 CALL(
  NAME _print,
   TEMP t38))
CJUMP(LT,
 TEMP t35,
 TEMP t39,
 L10,L1)
LABEL L10
MOVE(
 TEMP t35,
 BINOP(PLUS,
  TEMP t35,
  CONST 1))
JUMP(
 NAME L9)
LABEL L1
EXP(
 CALL(
  NAME _print,
   NAME L11))
CJUMP(LT,
 TEMP t34,
 TEMP t40,
 L13,L0)
LABEL L13
MOVE(
 TEMP t34,
 BINOP(PLUS,
  TEMP t34,
  CONST 1))
JUMP(
 NAME L12)
LABEL L0
EXP(
 CALL(
  NAME _print,
   NAME L11))
# Basic Blocks: 
#
LABEL L54
MOVE(
 TEMP t34,
 CONST 0)
MOVE(
 TEMP t40,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t34,
 TEMP t40,
 L12,L0)
#
LABEL L12
MOVE(
 TEMP t35,
 CONST 0)
MOVE(
 TEMP t39,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t35,
 TEMP t39,
 L9,L1)
#
LABEL L9
MOVE(
 TEMP t36,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t37,
 TEMP t34)
CJUMP(LT,
 TEMP t37,
 CONST 0,
 _BADSUB,L2)
#
LABEL L2
CJUMP(GT,
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST -4)),
 _BADSUB,L3)
#
LABEL L3
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   BINOP(MUL,
    TEMP t37,
    CONST 4))),
 TEMP t35,
 L6,L7)
#
LABEL L6
MOVE(
 TEMP t38,
 NAME L4)
JUMP(
 NAME L8)
#
LABEL L7
MOVE(
 TEMP t38,
 NAME L5)
JUMP(
 NAME L8)
#
LABEL L8
EXP(
 CALL(
  NAME _print,
   TEMP t38))
CJUMP(LT,
 TEMP t35,
 TEMP t39,
 L10,L1)
#
LABEL L10
MOVE(
 TEMP t35,
 BINOP(PLUS,
  TEMP t35,
  CONST 1))
JUMP(
 NAME L9)
#
LABEL L1
EXP(
 CALL(
  NAME _print,
   NAME L11))
CJUMP(LT,
 TEMP t34,
 TEMP t40,
 L13,L0)
#
LABEL L13
MOVE(
 TEMP t34,
 BINOP(PLUS,
  TEMP t34,
  CONST 1))
JUMP(
 NAME L12)
#
LABEL L0
EXP(
 CALL(
  NAME _print,
   NAME L11))
JUMP(
 NAME L53)
LABEL L53
# Trace Scheduled: 
LABEL L54
MOVE(
 TEMP t34,
 CONST 0)
MOVE(
 TEMP t40,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t34,
 TEMP t40,
 L12,L0)
LABEL L0
EXP(
 CALL(
  NAME _print,
   NAME L11))
JUMP(
 NAME L53)
LABEL L12
MOVE(
 TEMP t35,
 CONST 0)
MOVE(
 TEMP t39,
 BINOP(MINUS,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP $fp,
      CONST 0)),
    CONST -4)),
  CONST 1))
CJUMP(LE,
 TEMP t35,
 TEMP t39,
 L9,L1)
LABEL L1
EXP(
 CALL(
  NAME _print,
   NAME L11))
CJUMP(GE,
 TEMP t34,
 TEMP t40,
 L0,L13)
LABEL L13
MOVE(
 TEMP t34,
 BINOP(PLUS,
  TEMP t34,
  CONST 1))
JUMP(
 NAME L12)
LABEL L9
MOVE(
 TEMP t36,
 MEM(
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP $fp,
     CONST 0)),
   CONST -12)))
MOVE(
 TEMP t37,
 TEMP t34)
CJUMP(LT,
 TEMP t37,
 CONST 0,
 _BADSUB,L2)
LABEL L2
CJUMP(GT,
 TEMP t37,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   CONST -4)),
 _BADSUB,L3)
LABEL L3
CJUMP(EQ,
 MEM(
  BINOP(PLUS,
   TEMP t36,
   BINOP(MUL,
    TEMP t37,
    CONST 4))),
 TEMP t35,
 L6,L7)
LABEL L7
MOVE(
 TEMP t38,
 NAME L5)
LABEL L8
EXP(
 CALL(
  NAME _print,
   TEMP t38))
CJUMP(GE,
 TEMP t35,
 TEMP t39,
 L1,L10)
LABEL L10
MOVE(
 TEMP t35,
 BINOP(PLUS,
  TEMP t35,
  CONST 1))
JUMP(
 NAME L9)
LABEL L6
MOVE(
 TEMP t38,
 NAME L4)
JUMP(
 NAME L8)
LABEL L53
# Instructions: 
L54:
  move t34 $0 
	lw t164 0+tigermain.printboard.0_framesize($sp)
	lw t163 -4(t164)
	sub t162 t163 1
  move t40 t162 
	ble t34 t40 L12  
L0:
	la t165 L11
	move $a0 t165
	jal _print
  b  L53
L12:
  move t35 $0 
	lw t168 0+tigermain.printboard.0_framesize($sp)
	lw t167 -4(t168)
	sub t166 t167 1
  move t39 t166 
	ble t35 t39 L9  
L1:
	la t169 L11
	move $a0 t169
	jal _print
	bge t34 t40 L0  
L13:
  move t34 t170 
  b  L12
L9:
	lw t172 0+tigermain.printboard.0_framesize($sp)
	lw t171 -12(t172)
  move t37 t34 
	blt t37 0 _BADSUB  
L2:
	lw t173 -4(t36)
	bgt t37 t173 _BADSUB  
L3:
	sll t176 t37 2
	add t175 t36 t176 
	lw t174 (t175)
  beq t174 t35 L6  
L7:
	la t177 L5
  move t38 t177 
L8:
	move $a0 t38
	jal _print
	bge t35 t39 L1  
L10:
  move t35 t178 
  b  L9
L6:
	la t179 L4
  move t38 t179 
  b  L8
L53:
END tigermain.printboard.0
	.data
	.word 1
L11:	.asciiz	"\n"
	.data
	.word 2
L5:	.asciiz	" ."
	.data
	.word 2
L4:	.asciiz	" O"
