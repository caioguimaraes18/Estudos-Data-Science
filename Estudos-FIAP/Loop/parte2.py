# Variável que servirá para receber a opção do usuário
op = -1

# Enquanto o usuário não escolher a opção 0, o loop continuará

while op!=4:
    print('1 - Inserir novo registro')
    print('2 - Atualizar registro')
    print('3 - Excluir registro')
    print('4 - Sair')
    op = int(input('Digite a opção desejada: '))
    print('\n')
    
    if op == 1:
        print('Código 1 Rodando\n')
    elif op == 2:
        print('Código 2 Rodando\n')
    elif op == 3:
        print('Código 3 Rodando\n')
        
print('Fim do programa')
