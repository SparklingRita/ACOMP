#P2 - 3 a)

	.data 	 


	.text

	li x11, 0xD	
	
	andi x10, x11, 1

	srli x11, x11, 1  #deslocamos o que esta no x11 para a direita porque passamos para o proximo bit
	andi x12, x11, 1
	add x10, x10, x12

	srli x11, x11, 1 
	andi x12, x11, 1
	add x10, x10, x12

	srli x11, x11, 1 
	andi x12, x11, 1
	add x10, x10, x12

	li x17, 1
	ecall

	li x17, 10
	ecall