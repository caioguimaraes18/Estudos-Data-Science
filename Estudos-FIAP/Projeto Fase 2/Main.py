import json

# Função lambda para calcular ICMS (18%)
calcula_icms = lambda valor: round(valor * 0.18, 2)

# Função para solicitar dados do produto
def solicitar_produto():
    while True:
        try:
            categoria = input("Categoria do produto: ").strip()
            if not categoria:
                raise ValueError("Categoria inválida.")
            
            descricao = input("Descrição do produto: ").strip()
            if not descricao:
                raise ValueError("Descrição inválida.")
            
            valor = float(input("Valor do produto: ").strip())
            if valor <= 0:
                raise ValueError("Valor inválido.")
            
            embalagem = input("Tipo de embalagem: ").strip()
            if not embalagem:
                raise ValueError("Embalagem inválida.")
            
            icms = calcula_icms(valor)
            return categoria, {"descricao": descricao, "valor": valor, "embalagem": embalagem, "icms": icms}
        
        except ValueError as ve:
            print(f"Erro: {ve}")
        except KeyboardInterrupt:
            print("Operação interrompida pelo usuário.")
            break
        except Exception as e:
            print(f"Ocorreu um erro: {e}")

# Função principal do algoritmo
def cadastrar_produtos():
    produtos_por_categoria = {}

    while True:
        categoria, produto = solicitar_produto()
        if not produto:
            break

        if categoria not in produtos_por_categoria:
            produtos_por_categoria[categoria] = []
        
        produtos_por_categoria[categoria].append(produto)

        continuar = input("Deseja cadastrar um novo produto? (sim/não): ").strip().lower()
        if continuar != 'sim':
            break


  # Gerar arquivo JSON com caracteres especiais exibidos corretamente
    try:
        with open('1_5_arquivo_produto.json', 'w', encoding='utf-8') as arquivo_json:
            json.dump(produtos_por_categoria, arquivo_json, ensure_ascii=False, indent=4)
        print("Arquivo 1_5_arquivo_produto.json gerado com sucesso!")
    except Exception as e:
        print(f"Erro ao gerar o arquivo: {e}")


# Executar o programa
if __name__ == "__main__":
    try:
        cadastrar_produtos()
    except KeyboardInterrupt:
        print("\nPrograma encerrado pelo usuário.")
    except Exception as e:
        print(f"Erro inesperado: {e}")
