try:
    idade = int(input('Digite sua idade: '))
    idade_amigo = input('Digite a idade do seu melhor amigo: ')
    
    idade_total = idade + idade_amigo
except ValueError:
    print('Digite um número inteiro.')
except TypeError:
    print('Digite um número inteiro.')
except Exception as error:
    print(f'Erro: {error}')
else:
    print(f'Você tem {idade} anos.')
    print(f'Você tem {idade_amigo} anos.')
    print(f'Você tem {idade_total} anos.')
finally:
    print('Fim do programa.')