def estatisticas_dados(dados):
    media = sum(dados) / len(dados)
    minimo = min(dados)
    maximo = max(dados)
    return (media, minimo, maximo)

# Uso
dados = [100, 20, 430, 40, 50]
media, minimo, maximo = estatisticas_dados(dados)
print(f"Média: {media}, Mínimo: {minimo}, Máximo: {maximo}")