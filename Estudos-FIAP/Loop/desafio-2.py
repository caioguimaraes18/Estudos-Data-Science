def obter_notas(alunos):
    notas = []
    for i in range(alunos):
        nota = float(input(f"Digite a nota do aluno {i + 1}: "))
        notas.append(nota)
    return notas

def calcular_media(notas):
    return sum(notas) / len(notas)

def main():
    print("Digite as notas dos 25 alunos com número ímpar na chamada:")
    notas_impares = obter_notas(25)
    
    print("Digite as notas dos 25 alunos com número par na chamada:")
    notas_pares = obter_notas(25)
    
    media_impares = calcular_media(notas_impares)
    media_pares = calcular_media(notas_pares)
    
    print(f"Média das notas dos alunos com número ímpar: {media_impares:.2f}")
    print(f"Média das notas dos alunos com número par: {media_pares:.2f}")
    
    if media_impares > media_pares:
        print("A maior média é dos alunos com número ímpar.")
    elif media_pares > media_impares:
        print("A maior média é dos alunos com número par.")
    else:
        print("As médias são iguais.")

if __name__ == "__main__":
    main()