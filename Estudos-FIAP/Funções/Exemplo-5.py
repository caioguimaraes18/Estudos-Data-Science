# def dobro(x):
#     return 2 * x
dobro = lambda x: 2 * x

# Usamos o list para converter o resultado em uma lista
# O Map irá retornar um objeto do tipo map
resultado = list(map(dobro, [1, 2, 3, 4, 5]))
print(resultado)