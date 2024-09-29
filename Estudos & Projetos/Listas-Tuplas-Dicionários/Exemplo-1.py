import random

#Adicionando produtos em uma lista
protudos = []
# Adicionando as vendas em um dicionário
vendas = {}

#Pegando o registro de produtos
quantidade = int(input('Quantos produtos você deseja adicionar? '))


for i in range(quantidade):
    id_produto = int(input('Informe o ID do produto: '))
    nome_produto = input('Informe o nome do produto: ')
    preco_produto = float(input('Informe o preço do produto: '))
    vendas[id_produto] = random.randint(0, 1000)
    protudos.append((id_produto, nome_produto, preco_produto))
    
print('Lista de produtos: ', protudos)
print('Vendas: ', vendas)   

print('-------------------------------------------')

receita_total = 0

for produto in protudos:
    id_produto, nome_produto, preco_produto = produto
    quantidade_vendida = vendas.get(id_produto, 0)
    receita = quantidade_vendida * preco_produto
    media = receita / quantidade_vendida
    receita_total += receita
    print(f'{nome_produto}: {quantidade_vendida} vendidos, R$ {receita:.2f} e a média de preço é R$ {media:.2f}')
    
print(f'Receita total: R$ {receita_total:.2f}')



