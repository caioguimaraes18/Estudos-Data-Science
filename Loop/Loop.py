# Criação da de uma variável de controle para o loop
resposta = 0 

while (resposta != '42'):
    resposta = input("Qual a resposta para a vida, o universo e tudo mais? ")
    if resposta == '42':
        print("Resposta correta! Parabéns!")
    else:
        print("Resposta incorreta. Tente novamente.")
        
        
# Criação de uma variável de controle para o loop

i = 9
while(i >= 0):
    print(i)
    i = i - 1

# ou 

i = 10
while(i > 10):
    print(i)
    i =+ 1
    
    
# for loop

for i in range(10):
    print(i)
