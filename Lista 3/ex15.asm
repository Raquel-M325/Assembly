.text
main:
    add $2, $0, 5       # n de linhas
    syscall

    add $20, $0, $2    
    addi $21, $0, 1     # i = 1
    addi $23, $0, 1     # somador

lacoexterno:
    addi $24, $21, 0   
    addi $25, $20, 1    # $25 = n + 1
    beq $24, $25, fimlaco  # se i == n +1, termina

    # imprime primeira coluna
    add $4, $0, $23
    add $2, $0, 1
    syscall

    addi $23, $23, 1      # somador + 1
    addi $22, $0, 1       # j = 1, contador interno

lacointerno:
    beq $22, $21, fiminterno  # se j == i, termina interno

    addi $4, $0, ' '          # espaço
    addi $2, $0, 11
    syscall

    add $4, $0, $23           # imprime número
    addi $2, $0, 1
    syscall

    addi $23, $23, 1          # contador +1
    addi $22, $22, 1          # j +1
    j lacointerno

fiminterno:
    addi $4, $0, '\n'   
    addi $2, $0, 11
    syscall

    addi $21, $21, 1          # i + 1
    j lacoexterno             # volta para externo

fimlaco:
    addi $2, $0, 10
    syscall
