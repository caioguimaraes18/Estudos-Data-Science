class IdadeMaxExcedida(Exception):
    def __init__(self):
        return "Idade não pode ser superior a 125 anos."


try:
    idade = int(input('Digite sua idade: '))
    if idade < 0:
        raise ValueError('Idade não pode ser negativa.')
    elif idade > 125:
        raise IdadeMaxExcedida()
except ValueError as error:
    print(f'Erro: {error}')
except Exception as error:
    print(f'Erro: {error}')
else:
    print(f'Você tem {idade} anos.')