import json

contagem_masculino = 0
contagem_feminino = 0

try:
    # Abre o arquivo JSON
    with open(r'Estudos & Projetos\Json & CSV\arquivo.json', 'r', encoding='utf-8') as arquivo:
        conteudo = json.load(arquivo)
        
        # Acessa a lista de personagens dentro da chave 'people'
        personagens = conteudo.get('people', [])
        
        for personagem in personagens:
            nome = personagem.get('name', 'Nome não disponível')
            genero = personagem.get('gender', 'Não informado')
            
            print(f'Personagem: {nome} - Gênero: {genero}')
            
            # Contagem de personagens por gênero
            if genero.lower() == 'male':
                contagem_masculino += 1
            elif genero.lower() == 'female':
                contagem_feminino += 1
            else:
                print(f'Gênero não identificado: {genero}')
         
        print('-------------------------------------------')        
        print(f'Quantidade de personagens masculinos: {contagem_masculino}')
        print(f'Quantidade de personagens femininos: {contagem_feminino}')
        print(f'Total de personagens: {contagem_masculino + contagem_feminino}')       

except FileNotFoundError:
    print('Arquivo não encontrado')
except json.JSONDecodeError:
    print('Erro ao decodificar o JSON')
except UnicodeDecodeError:
    print('Erro de codificação ao tentar ler o arquivo')
