.text

main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #idade
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2 #tempo de trabalho
	
	addi $10, $0, 65 #idade para aponsentadoria
	addi $11, $0, 40 #trabalho
	addi $12, $0, 60 #no minimo de idade
	addi $13, $0, 35 #no minimo de trabalho
	
	slt $14, $8, $10 #Se $8 < $10, $14 == 1, NÃO TEM IDADE SUFICIENTE, NÃO SERÁ APONSENTADO, VERÁ OUTRA CONDIÇÃO
	beq $14, $0, SIMIDADE
	
	slt $16, $9, $11 #Se $9 < $11, $16 == 1, NÃO TEM TRABALHO SUFICIENTE, ENTÃO NÃO IRÁ APONSENTAR, VERÁ OUTRA CONDIÇÃO
	beq $16, $0, SIMIDADE
	
	
NAOIDADE: slt $15, $8, $12 #Se $8 < $12, $15 == 1, NÃO TEM MINIMO DE APONSENTADORIA
	beq $15, $0, NAOTRABALHO
			
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	j gaster
	
	
NAOTRABALHO: slt $17, $9, $13 #Se $9 < $13, $17 == 1, NÃO TEM O MINIMO DE TRABALHO
	beq $17, $0, SIMIDADE
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	j gaster


	
SIMIDADE: addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	j gaster
	

	
gaster: add $2, $0, 10
	syscall


