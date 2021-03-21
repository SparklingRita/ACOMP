#P2 - 1 d)

# 824 em hexadecimal é 338

	li x10, 824
	xori x10, x10, 0x100  # esta constante tem o nono bit a 1 e os outros todos a 0

	li x17, 1
	ecall

	li x17, 10
	ecall
