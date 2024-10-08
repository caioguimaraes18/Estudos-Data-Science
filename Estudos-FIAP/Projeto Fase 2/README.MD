# Cadastro de Produtos com ICMS

Este projeto permite cadastrar produtos, organizá-los por categorias e calcular o valor do ICMS (Imposto sobre Circulação de Mercadorias e Serviços) a uma taxa de 18%. Os dados dos produtos cadastrados são salvos em um arquivo JSON, onde podem ser reutilizados ou analisados posteriormente.


## Funcionalidades
- Cadastro de produtos: O usuário pode inserir informações sobre o produto, como categoria, descrição, valor e tipo de embalagem.

- Cálculo automático de ICMS: A aplicação calcula automaticamente o ICMS sobre o valor do produto.

- Armazenamento em JSON: Os dados são salvos em um arquivo JSON com suporte para caracteres especiais.

- Validações de entrada: O programa valida as informações inseridas, garantindo que dados inválidos, como valores negativos ou campos vazios, sejam tratados de forma adequada.

## Como usar
1. Executar o programa
Para rodar o programa, basta executar o script Python.

```bash
python nome_do_script.py
```

2. Inserir os dados do produto
Durante a execução, o usuário será solicitado a fornecer os seguintes dados:

- Categoria: Categoria do produto (por exemplo: "Eletrônicos", "Alimentos").
- Descrição: Descrição breve do produto.
- Valor: Valor monetário do produto.
- Embalagem: Tipo de embalagem do produto (por exemplo: "Caixa", "Saco plástico").

O valor do ICMS será calculado automaticamente com base em 18% do valor do produto.

3. Repetir o processo de cadastro
Após cada cadastro, o programa perguntará se deseja cadastrar mais produtos. Responda sim para continuar ou não para encerrar o cadastro.

4. Gerar o arquivo JSON  
Depois de encerrar o cadastro, os dados serão salvos em um arquivo chamado **1_5_arquivo_produto.json.** O arquivo conterá as informações dos produtos, organizados por categoria, no seguinte formato:

```json
{
    "Eletrônicos": [
        {
            "descricao": "Smartphone",
            "valor": 1200.00,
            "embalagem": "Caixa",
            "icms": 216.00
        }
    ],
    "Alimentos": [
        {
            "descricao": "Arroz",
            "valor": 20.00,
            "embalagem": "Saco plástico",
            "icms": 3.60
        }
    ]
}
```

Exemplo de execução:

```yaml
Categoria do produto: Eletrônicos
Descrição do produto: Notebook
Valor do produto: 3500
Tipo de embalagem: Caixa

Deseja cadastrar um novo produto? (sim/não): sim

Categoria do produto: Alimentos
Descrição do produto: Feijão
Valor do produto: 10
Tipo de embalagem: Saco plástico

Deseja cadastrar um novo produto? (sim/não): não
Arquivo 1_5_arquivo_produto.json gerado com sucesso!

```

### Requisitos

- Python 3.x instalado.
- Permissão para criar arquivos na pasta do projeto.

### Tratamento de erros

- Valor inválido: Caso o valor inserido seja zero ou negativo, o programa solicitará que o valor seja inserido novamente.
- Interrupção pelo usuário: Ao pressionar CTRL+C, o programa será interrompido de forma segura e exibirá uma mensagem de saída.
- Outros erros: Caso ocorra algum erro inesperado, o programa exibirá uma mensagem indicando o erro.

### Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.

###
<div  align="center"> 
  <a href = "mailto:contatocaioguimaraess@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://www.linkedin.com/in/caio-guimar%C3%A3ess/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
</div><br>