# RUN: not llvm-mc -triple s390x-linux-gnu < %s 2> %t
# RUN: FileCheck < %t %s

#CHECK: error: invalid operand
#CHECK: oy	%r0, -524289
#CHECK: error: invalid operand
#CHECK: oy	%r0, 524288

	oy	%r0, -524289
	oy	%r0, 524288
