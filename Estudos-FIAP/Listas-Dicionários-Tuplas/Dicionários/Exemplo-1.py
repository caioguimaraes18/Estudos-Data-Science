#Criando as duas listas
personagens=[]
categorias=[]
#Executando um loop 10 vezes
for x in range(2):
    #pedindo que o usuário informe um nome e colocando na lista de personagens
    personagens.append(input("Informe o nome do personagem: "))
    #pedindo que o usuário informe a categoria e colocando na lista de categorias
    categorias.append(input("Informe a categoria do personagem: "))
#Executando um loop 10 vezes
for indice in range(2):
    #exibindo a cada volta o que está contido em um índice de personagens e categorias
    print("O personagem {} é um(a) {}".format(personagens[indice], categorias[indice]))