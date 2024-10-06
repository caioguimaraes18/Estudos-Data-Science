# x = [45,60,42,50,55,47]

# total = 0 
# for i in range(len(x)):
#     total += x[i]
    
# # media = total / len(x)
# print(total)



segundos = int(input("Entre com um número em segundos: "))

horas = segundos // (60*60) # horas inteiras

segundos = segundos % (60*60) # resto de segundos da divisao por hora

minutos = segundos // 60 # minutos inteiros

segundos = segundos % 60 # resto de segundos da divisão por minuto

print(horas, minutos, segundos, sep=":")