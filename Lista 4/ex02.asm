.data 

.text
main:
	lui $20, 0x1001
	
	addi $8, $0, 6 #limite de repetição n 
	
	addi $9, $0, 0 #i == 0 
	
	
laco:	
    beq $8, $0, mostrar #esse é para comparar se n == 0, ele vai direto mostrar no terminal, senao, vai fazer primeiro
      
        
fazer:
	addi $2, $0, 5
	syscall 
	
	sw $2, 0($20) 
	
	subi $8, $8, 1 #6 - 1 até chegar em 0 para sair do laço
	
	addi $20, $20, 4 #se eu nao fizesse isso, ele nao iria para outro indice!
	
	
	j laco
	
mostrar:  
	lui $20, 0x1001  #esse serve para reiniciar, começar pelo começo
	addi $8, $0, 6 #tem que reiniciar a contagem para valor 6, e assim segue abaixo sem condição
	
	
laco2:	beq $8, $0, gaster #se n == 0, irá terminar, senão, continua a fazer
	
	lw $4, 0($20) #´peguei o indice
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	subi $8, $8, 1 #6 - 1 até chegar em 0 para sair do laço
	addi $20, $20, 4 #se eu nao fizesse isso, ele nao iria para outro indice!
	
	j laco2
	
gaster:
	addi $2, $0, 10
	syscall
	
#entao, alem de colocar a base i e o n, tem que colocar a condicao do for
	#depois colocar a operação e repeticao do rotulo para sair da condiçao, 
	#depois repetir de novo para reiniciar e nao esquecer de subtrair o n ate i
	#e a soma dele mesmo dos dados - vetores em 4 bytes a mais
    #sempre se lembre em reiniciar e repetir os dados do vetores 0x1001 e o n que vai estar zerado