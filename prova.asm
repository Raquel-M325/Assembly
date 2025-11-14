.data

.text
    lui $20, 0x1001
    add $8, $0, 10

laco: beq $8, $0, soma

    add $2, $0, 5
    syscall

    sw $2, 0($20)

    add $20, $20, 4 #pule o indice
    subi $8, $8, 1

    add $30, $0, 0 #posicoes
    add $31, $0, 1

    j laco

soma: 
    #0 4 8 12 16 20 24 28 32 36 - limite
    #9 somas no maximo

        lui $20, 0x1001
        lw $10, 0($20)
        lw $11, 4($20)

        add $12, $11, $10 #primeira soma

        lw $13, 8($20)
        
        add $14, $11, $13 #segunda soma

        lw $15, 12($20)

        add $16, $13, $15 #terceira soma

        lw $17, 16($20) 

        add $18, $15, $17 #quarta soma

        lw $19, 20($20)

        add $21, $17, $19 #quinta soma

        lw $22, 24($20)

        add $23, $19, $22 #sexta soma

        lw $24, 28($20)

        add $25, $22, $24 #setima soma

        lw $26, 32($20) 

        add $27, $24, $26 #oitava soma

        lw $28, 36($20)

        add $29, $26, $28 #ultima soma

        j verifica

#Primeira com segunda soma
verifica:   
            add $30, $0, 0 #posicoes fixo
            add $31, $0, 1

            slt $9, $12, $14 #se $12 < $14, dará 1
            beq $9, $0, prox1 #se der 0, $12 é maior, pule!

            add $12, $14, $0 #senao, $14 é maior!

            addi $30, $30, 1 #posicoes se somam!
            addi $31, $31, 1
            

#A maior soma com terceira
prox1: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $16
        beq $9, $0, prox2 #se der 0, $12/maiorsoma > $16

        add $12, $16, $0 #senao, a maiorsoma do $12 que era $14, será agora $16

        addi $30, $30, 2 #posicoes se somam dobrado!
        addi $31, $31, 2

#A maior soma com a quarta
prox2: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $18
        beq $9, $0, prox3 #se der 0, $12 é maior ainda do que as outras

        add $12, $18, $0 #senao, será substituida pela outra soma maior que a maior soma

        add $30, $30, 3 #posicoes se somam triplo!
        add $31, $31, 3

#A maior soma com quinta
prox3: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $21
        beq $9, $0, prox4

        add $12, $21, $0 

        add $30, $30, 4 #posicoes se somam em quatro! Já que eu reiniciei antes para ficar separado em cada categoria!
        add $31, $31, 4

#A maior soma com sexta
prox4: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $23
        beq $9, $0, prox5

        add $12, $23, $0

        add $30, $30, 5 #posicoes se somam em quinto
        add $31, $31, 5

#A maior soma com setima
prox5: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $25
        beq $9, $0, prox6

        add $12, $25, $0

        add $30, $30, 6 #posicoes se somam em sexto
        add $31, $31, 6

#A maior soma com oitava
prox6: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1

        slt $9, $12, $27
        beq $9, $0, prox7

        add $12, $27, $0 

        add $30, $30, 7 #posicoes em setimo
        add $31, $31, 7

#A maior soma com a ultima soma
prox7: 
        add $30, $0, 0 #posicoes fixo
        add $31, $0, 1 

        slt $9, $12, $29
        beq $9, $0, fim

        add $12, $29, $0

        add $30, $30, 8 #posicoes se somam em oitavo!
        add $31, $31, 8

fim: 
    	add $4, $0, $12
    	addi $2, $0, 1   #mostre a maior soma
    	syscall

	addi $4, $0, '\n'
	add $2, $0, 11
	syscall
	
    	#posicoes
    	add $4, $0, $30
    	addi $2, $0, 1
    	syscall

	addi $4, $0, '\n'
	add $2, $0, 11
	syscall
	
    	add $4, $0, $31
   	 addi $2, $0, 1
    	syscall 

    	j gaster

gaster: addi $2, $0, 10
        syscall

