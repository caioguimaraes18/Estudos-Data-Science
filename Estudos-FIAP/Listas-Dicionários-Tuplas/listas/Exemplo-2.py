jogadores = list(('Ronaldo', 'Rivaldo', 'Ronaldo', 'Rivaldo', 'Ronaldo', 'Rivaldo'))
# print(jogadores[2])
# print(jogadores[-3])

jogadores.append(input('Digite o nome de um jogador: '))
jogadores.insert(3,input('Digite o nome de um jogador: '))

for jogador in jogadores:
    print(jogador)