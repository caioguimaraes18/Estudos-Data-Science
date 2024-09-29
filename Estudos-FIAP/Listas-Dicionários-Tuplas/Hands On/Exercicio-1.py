# Criando a lista de nomes das armaduras
nomes_armaduras = ['Mark IV', 'Mark II', 'Mark III', 'Mark I', 'Mark V']
print('Lista Inicial de armaduras:', nomes_armaduras)
# Adicionando uma nova armadura no final da lista usando o método append()
print('Adicionando uma nova armadura no final da lista usando o método append()')
nova_armadura = input('Digite o nome da nova armadura: ')
nomes_armaduras.append(nova_armadura)
print('Lista de armaduras atualizada:', nomes_armaduras)
# Adicionando uma nova armadura em uma posição específica da lista usando o método insert()
print('Adicionando uma nova armadura em uma posição específica da lista usando o método insert()')
# Mostrando as posições disponíveis na lista
print(f'Posições disponíveis: de 0 a {len(nomes_armaduras)}')
nova_armadura = input('Digite o nome da nova armadura: ')
# Solicitando uma posição até que seja fornecida uma posição válida
while True:
    posicao = int(input('Digite a posição onde a nova armadura será inserida: '))
    if posicao >= 0 and posicao <= len(nomes_armaduras):
        break
    print(f'Posição inválida. Digite uma posição entre 0 e {len(nomes_armaduras)}')
nomes_armaduras.insert(posicao, nova_armadura)
print('Lista de armaduras atualizada:', nomes_armaduras)
# Ordenando a lista de armaduras em ordem alfabética usando o método sort()
print('Ordenando a lista de armaduras em ordem alfabética usando o método sort()')
print('Lista de armaduras desordenada:', nomes_armaduras)
nomes_armaduras.sort()
print('Lista de armaduras ordenada:', nomes_armaduras)
# A função sort() pode receber o argumento reverse=True para ordenar a lista em ordem decrescente
nomes_armaduras.sort(reverse=True)
print('Lista de armaduras ordenada em ordem decrescente:', nomes_armaduras)
# A função sort() pode receber o argumento key=str.lower para ignorar maiúsculas e minúsculas na ordenação
nomes_armaduras.sort(key=str.lower)
print('Lista de armaduras ordenada em ordem alfabética ignorando maiúsculas e minúsculas:', nomes_armaduras)
# Selecionando um intervalo de elementos da lista usando slicing
print('Selecionando um intervalo de armaduras usando slicing')
inicio = int(input('Digite a posição inicial do intervalo: '))
fim = int(input('Digite a posição final do intervalo: '))
intervalo = nomes_armaduras[inicio:fim]
print('Intervalo de armaduras selecionado:', intervalo)
# Criando a tupla de características das armaduras
# Como tuplas são imutáveis, precisamos inserir os valores diretamente na tupla
# durante sua criação, utilizando input para receber a entrada do usuário
print('Criando a tupla de características das armaduras')
print('Digite as características da nova armadura:')
caracteristicas_armaduras = (
    ('Ferro', 'Pequena', 200),
    ('Titânio', 'Média', 300),
    ('Liga Metálica', 'Média', 400),
    ('Fibra de Carbono', 'Grande', 500),
    ('Ouro', 'Pequena', 600),
    (input('Digite o material da nova armadura: '), input('Digite o tamanho da nova armadura: '), input('Digite o peso da nova armadura: '))
)
print('Características das Armaduras:', caracteristicas_armaduras)
# Contando a quantidade de elementos na tupla usando o método len()
print('Contando a quantidade de elementos na tupla usando o método len()')
# Obtendo a quantidade de elementos da tupla
qtde_caracteristicas_armaduras = len(caracteristicas_armaduras)
print('Quantidade de caracteristicas', qtde_caracteristicas_armaduras )
# Contando a quantidade de elementos repetidos na tupla
material = input('Digite o material que deseja contar: ')
quantidade = 0
for i in range(qtde_caracteristicas_armaduras):
    if caracteristicas_armaduras[i][0] == material:
        quantidade += 1
print('Quantidade de armaduras com o material', material, ':', quantidade)
# Criando o dicionário de informações detalhadas das armaduras
print('Criando o dicionário de informações detalhadas das armaduras')
informacoes_armaduras = {
    'Mark I': {'ano': 2008, 'proteção': 'baixa', 'potência de fogo': 10},
    'Mark II': {'ano': 2010, 'proteção': 'média', 'potência de fogo': 20},
    'Mark III': {'ano': 2012, 'proteção': 'média', 'potência de fogo': 30},
    'Mark IV': {'ano': 2013, 'proteção': 'alta', 'potência de fogo': 40},
    'Mark V': {'ano': 2014, 'proteção': 'alta', 'potência de fogo': 50},
}
# Obtendo a lista de tuplas (chave, valor) do dicionário usando o método items()
print('Obtendo a lista de tuplas (chave, valor) do dicionário usando o método items()')
lista_tuplas = informacoes_armaduras.items()
print('Lista de tuplas do dicionário de informações das armaduras:', lista_tuplas)
# Atualizando informações de uma armadura no dicionário usando o método update()
print(' Atualizando informações de uma armadura no dicionário usando o método update()')
print('Armaduras disponíveis:', list(informacoes_armaduras.keys()))
armadura = input('Digite o nome da armadura que deseja atualizar as informações: ')
ano = int(input('Digite o ano de lançamento da armadura: '))
protecao = input('Digite o nível de proteção da armadura: ')
potencia = int(input('Digite a potência de fogo da armadura: '))
informacoes_armaduras.update({armadura: {'ano': ano, 'proteção': protecao, 'potência de fogo': potencia}})
print('Informações da armadura', armadura, 'atualizadas:', informacoes_armaduras[armadura])
#Removendo uma armadura do dicionário usando o método pop()
print('Removendo uma armadura do dicionário usando o método pop()')
armadura = input('Digite o nome da armadura que deseja remover' + list(informacoes_armaduras.keys()) + ': ')
informacoes_armaduras.pop(armadura)
print('Armadura', armadura, 'removida do dicionário.')
#Apresentando o dicionario inteiro
print('Dicionário de informações das armaduras atualizado:')
for chave, valor in informacoes_armaduras.items():
    print('Nome:', chave)
    print('Ano de lançamento:', valor['ano'])
    print('Nível de proteção:', valor['proteção'])
    print('Potência de fogo:', valor['potência de fogo'])
    print('') # linha em branco para separar as informações de cada armadura