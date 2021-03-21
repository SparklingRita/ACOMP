#P2 - 2 b)

	.data 	 #inicializar as variaveis
vals: .word 3, 7, 4, 6

	.text
	la x11, vals

	lw x10, 0(x11)  #carregar para o x10, o '3'	
	
	addi x11, x11, 4  	#somamos 4 ao x11 e passa a ficar com o '7'
	lw x12, 0(x11) 		#carregar para o x12, o '7'
	add x10, x10, x12  	#somar o '3' com o '7'

	addi x11, x11, 4  	#somamos 4 ao x11 e passa a ficar com o '4'
	lw x12, 0(x11) 		
	add x10, x10, x12 

	addi x11, x11, 4  	#somamos 4 ao x11 e passa a ficar com o '6'
	lw x12, 0(x11) 		
	add x10, x10, x12 

	 # para fazer a media, como temos 4 numeros, dividimos por 4 = 2^2 fazendo um shift right arithmetic immediate	
	srai x10, x10, 2  

	li x17, 1
	ecall

	li x17, 10
	ecall