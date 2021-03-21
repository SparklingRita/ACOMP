#P2 - 1 c)

# 824 em hexadecimal é 338

	li x10, 824

	srli x10, x10, 4	    #shift right logic immediate
	andi x10, x10, 0xF 	   	#se colocarmos '0x' o numero esta em hexadecimal

	li x17, 1
	ecall

	li x17, 10
	ecall