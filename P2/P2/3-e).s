# P2 - 3 e)

# y = 3x^3 - 2x^2 + 5x + 7

	.data
a:	.byte 3
b:	.half 4523
c:	.word 100000


	.text
	
	lb x10, a	# lb = load byte
	lh x11, b	# lh = load half
	lw x12, c	# lw = load word 

	add x10, x10, x11
	add x10, x10, x12 	# em x10, fica a soma x10 + x11 + x12

	li x17, 1
	ecall

	li x17, 10
	ecall