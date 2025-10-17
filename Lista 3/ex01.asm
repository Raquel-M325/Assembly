.text
main:
        addi $8, $0, 10 #fixo n
        addi $9, $0, 3 #multiplos
        addi $10, $0, 0 #contador i
        
range:  
        beq $10, $8, gaster  #se i == 10, pule!

        add $4, $0, $9  #senão for, então entre no laço!       
        addi $2, $0, 1
        syscall

        addi $4, $0, '\n' #pula uma linha
        addi $2, $0, 11
        syscall

        add $9, $9, 3 #tem que colocar 3, pois o $9 não será mais o 3 pela operação, então, tem que acrescentar novamente e digitar o memso registrador para se somar!
        add $10, $10, 1 #$i + 1, se somando até chegar em 10 para parar! i++

        j range

gaster: 
        addi $2, $0, 10
        syscall

