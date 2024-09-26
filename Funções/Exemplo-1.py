def calculaVelocidade():
    distancia = float(input("Digite a distância percorrida: "))
    tempo = float(input("Digite o tempo gasto: "))
    
    velocidade_media = distancia / tempo
    
    print("Velocidade média: {:.2f} m/s".format(velocidade_media))
    
    
# Chamando a função
calculaVelocidade()
