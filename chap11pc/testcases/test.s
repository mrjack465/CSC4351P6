	.text
tigermain:
tigermain_framesize=40
	subu $sp tigermain_framesize
L1:
  move $0 $ra 
  move $0 $s0 
  move $0 $s1 
  move $0 $s2 
  move $0 $s3 
  move $0 $s4 
  move $0 $s5 
  move $0 $s6 
  move $0 $s7 
  move $0 $s8 
  move $0 $a0 
  li $v0 1
	add $v0 $v0 2

  move $s8 $0 
  move $s7 $0 
  move $s6 $0 
  move $s5 $0 
  move $s4 $0 
  move $s3 $0 
  move $s2 $0 
  move $s1 $0 
  move $s0 $0 
  move $ra $0 
  b  L0
L0:

	addu $sp tigermain_framesize
	j $ra
