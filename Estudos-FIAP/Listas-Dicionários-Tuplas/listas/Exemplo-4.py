#Criando uma lista nova


jogadores = [ 'Ronaldo', 'Neymar', 'Messi', 'Cristiano Ronaldo']
jogadores_aposentados = ['Danilo', 'Kaká', 'Rivaldo']

todos = jogadores + jogadores_aposentados

print(todos)

jogadores.extend(jogadores_aposentados)