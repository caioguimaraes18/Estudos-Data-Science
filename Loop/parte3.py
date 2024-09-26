#Variável para armazernar o peso total das caixas

peso_total = 0

#Loop para repetir por 100 vezes a solicitação do peso de uma caixa

for x in range(1,101):
   peso_atual = float(input(f'Insira o peso da caixa {x}: '))  
   
   peso_total = peso_total + peso_atual
   
   
media = peso_total/100


print(f'O peso total das caixas é {peso_total} e a média é {media}')