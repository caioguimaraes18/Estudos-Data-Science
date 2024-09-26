def calculaVelocidade(dist, temp):
    velocidade_media = dist / temp    
    return "Velocidade média: {:.2f} m/s".format(velocidade_media)
    
 
 
 
 
 # Código meu principal
 
distancia = float(input("Digite a distância percorrida: "))
tempo = float(input("Digite o tempo gasto: "))   
# Chamando a função
# Var = calculaVelocidade(distancia, tempo)
# print (Var)

print(calculaVelocidade(distancia, tempo))
   
