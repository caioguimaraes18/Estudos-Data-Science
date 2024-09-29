jogadores = list(('Ronaldo', 'Rivaldo', 'Ronaldo', 'Rivaldo', 'Ronaldo', 'Rivaldo'))
# print(jogadores[2])
# print(jogadores[-3])

jogadores.append('Romário')
jogadores.insert(2, 'Pelé')

for jogador in jogadores:
    print(jogador)