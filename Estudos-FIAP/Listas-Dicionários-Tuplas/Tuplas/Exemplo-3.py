dados = [
    ("2024-01-01", "Produto A", 100),
    ("2024-01-01", "Produto B", 150),
    ("2024-01-02", "Produto A", 200),
    ("2024-01-02", "Produto B", 250),
]

# Agrupando por data e produto
vendas = {}
for data, produto, quantidade in dados:
    chave = (data, produto)
    vendas[chave] = vendas.get(chave, 0) + quantidade

print(vendas)