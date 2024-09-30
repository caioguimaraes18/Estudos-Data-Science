import csv

with open('jedis.csv') as arquivo_csv:
    leitor_csv = csv.reader(arquivo_csv, delimiter=',', quotechar='"')
    next(leitor_csv)  # Ignora a primeira linha, que contém apenas os títulos das colunas
    for linha in leitor_csv:
        mensagem = f"O Jedi de nome {linha[0]}, com {linha[1]} anos de idade, é classificado como {linha[2]}."
        print(mensagem)