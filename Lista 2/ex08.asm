.text
#IMCOMPLETA

main: 	
	addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #dia
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2 #mes
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2 #ano
	
	addi $11, $0, 31
	addi $12, $0, 1
	addi $13, $0, 12
	addi $14, $0, 2025
	
	slt $15, $11, $8 #Se $11 < $8, $15 == 1, DIA INVALIDO, 31 < DIA
	beq $15, $0, VERIFICADIA
	
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
		
VERIFICADIA: slt $16, $8, $12 #Se for menor que 1 ($8< $12), Se torna invalido $16 == 1
	beq $16, $0, MES
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster

MES: slt $17, $13, $9 #Se o $13 < $9, $17 == 1, SE 12 < MES, É INVALIDO
	beq $17, $0, VERIFICAMES
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
VERIFICAMES: slt $18, $9, $12 #Se o $9 < $12, $18 == 1, SE MES < 1, É INVALIDO
	beq $18, $0, ANO
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
ANO: slt $19, $14, $10 #Se o $14 < $10, $19 == 1, SE 2025 < ANO, É INVALIDO
	beq $19, $0, VERIFICAANO
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
VERIFICAANO: slt $20, $10, $12 #Se o $10 < $12, $20 == 1, SE ANO < 1, É INVALIDO
	beq $20, $0, VALIDO
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
VALIDO: addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'v'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'á'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'l'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	
	j gaster
	
gaster: addi $2, $0, 10 
	syscall


	
	
.text

main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #dia
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2 #mes
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2 #ano

	addi $11, $0, 31
	addi $12, $0, 1
	addi $13, $0, 12
	addi $14, $0, 2025
	
	add $15, $8, $12
	slt $16, $15, $11 #data soma < 31, $16 == 1, 
	beq $16, $0, MESSEGUINTE
	
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'g'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'u'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $15
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $9
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $10
	add $2, $0, 1
	syscall
	
	sub $19, $8, $12 
	slt $20, $12, $19 #1 < data sub, $19 == 1
	bne $20, $0, MESSEGUINTE
	
	
	addi $4, $0, '\n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $19
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $9
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $10
	add $2, $0, 1
	syscall
	
	j gaster
	
	
MESSEGUINTE: add $16, $9, $12
		slt $17, $16, $13
		beq $17, $0, ANOSEGUINTE
		
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'g'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'u'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $8
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $16
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $10
	add $2, $0, 1
	syscall
	
	sub $21, $9, $12 
	slt $22, $12, $21 #1 < data sub, $22== 1
	bne $22, $0, ANOSEGUINTE 
	
	
	addi $4, $0, '\n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $8
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $21
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $10
	add $2, $0, 1
	syscall
		
	j gaster
			
ANOSEGUINTE: add $18, $10, $12
	
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'g'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'u'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $8
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $9
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $17
	add $2, $0, 1
	syscall

	addi $4, $0, '\n'
	add $2, $0, 11
	syscall

	sub $23, $10, $12 
	
	addi $4, $0, 'D'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'a'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'n'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'r'
	add $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	add $4, $0, $8
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $9
	add $2, $0, 1
	syscall
	
	addi $4, $0, '/'
	add $2, $0, 11
	syscall
	
	add $4, $0, $23
	add $2, $0, 1
	syscall
	
	j gaster
	
gaster: addi $2, $0, 10
	syscall
	



	
	



	

	
