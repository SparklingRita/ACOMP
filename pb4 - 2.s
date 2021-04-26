# P4 - EX2

	.data
on: .word 0

	.text
int:
	# salvaguarda de contexto
	addi sp,sp, -8
	sw x1, 4(sp)
	sw x10, 0(sp)

	csrrw x10, scause, zero

	# se scause for 3 chama a rotina checkTemp
	addi x10, x10, -3
	bne x10, zero, next
	jal checkTemp
	# para ter a certeza que nao volta a executar mais vezes do que o esperado
	j end

next:
	#...
end:
	# reposicao de contexto
	lw x1, 4(sp)
	lw x10, 0(sp)
	# libertar a pilha
	addi sp,sp,8
	sret


checkTemp:
	addi sp,sp,-8
	sw x10, 4(sp)
	sw x11, 0(sp)

	# se a variavel estiver a 0, vai para a label off
	lw x10, on
	beq x10, zero, off

	li x10, 0xFFFF000C # de acordo com o enunciado
	lw x10, 0(x10)

	li x11, 40
	bge x10, x11, ct_end
	li x10, 0xFFFF000A
	sw zero, 0(x10)  # desligar ventoinha
	la x10, on
	sw zero, 0(x10)
	j ct_end


off:
	li x10, 0xFFFF000C # de acordo com o enunciado
	lw x10, 0(x10)

 # se a temperatura for maior do que 50, ligamos a ventoinha

	li x11, 50
	ble x10, x11, ct_end

	li x11, 1
	li x10, 0xFFFF000A
	sw x11, 0(x10)  # ligar a ventoinha
	la x10, on
	sw x11, 0(x10)


ct_end:
# reposicao de contexto

	lw x10, 4(sp)
	lw x11, 0(sp)
	addi sp, sp, 8
	ret


# 2 c)

# scause <= 3
# sepc <= 0x64
# pc <= stvec
# SPIE <= 0

# termino da interrupção
# pc <= sepc
# SPIE <= GIE