#importando o módulo json
import json

#criando um dicionário para usarmos como exemplo
contatos = {
    "Clark Kent":
        {"Celular":"123456",
         "Email":"super@krypton.com"},
    "Bruce Wayne":
        {"Celular":"654321",
         "Email":"bat@caverna.com.br"}
}

#convertendo o dicionário para uma string o formato json
final = json.dumps(contatos, indent=4)

#exibindo a string convertida
print(final)