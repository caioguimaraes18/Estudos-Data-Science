def validar_nome(nome):
    return all(parte.isalpha() for parte in nome.split()) and len(nome.strip()) > 0

def validar_rm(rm):
    return rm.isdigit() and len(rm) == 6

def validar_idade(idade):
    try:
        idade_int = int(idade)
        return idade_int
    except ValueError:
        return None

while True:
    nome = input("Insira seu nome: ")
    if validar_nome(nome):
        break
    print("Nome inválido! Insira apenas letras.")

while True:
    rm = input("Insira seu RM (6 dígitos): ")
    if validar_rm(rm):
        break
    print("RM inválido! Insira um RM válido com 6 dígitos.")

while True:
    idade = input("Insira sua idade: ")
    idade_int = validar_idade(idade)
    if idade_int is not None:
        break
    print("Idade inválida! Insira um número.")

if idade_int >= 18:
    print(f"Sua participação foi autorizada, {nome}, com RM: {rm}")
    
    nota_satisfacao = int(input("Insira a nota de satisfação (0 a 100): "))
    
    if nota_satisfacao > 90:
        print("Atendimento de qualidade.")
    elif 70 <= nota_satisfacao <= 89:
        print("Atendimento neutro.")
    else:
        print("Atendimento insatisfatório.")
    
    print("Obrigado por participar!")
else:
    print("Participação não autorizada para menores de 18 anos.")
