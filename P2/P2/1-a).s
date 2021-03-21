#P2 - 1 a)

	li x10, 3  #li = load immediate
	li x11, 7
	li x12, 4

	add x10, x10, x11
	sub x10, x10, x12

	li x17, 1  # x17 indica que o ecall vai fazer um print, e o que imprime é (sempre) o que está no x10
	ecall	   # se quisermos usar outro registo que nao o x10, temos de o mover para o x10

	li x17, 10     # independentemente do que estiver no x17, como temos um 10 à frente, faz um exit
	ecall