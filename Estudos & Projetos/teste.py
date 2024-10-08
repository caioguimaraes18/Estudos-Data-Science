# x = [45,60,42,50,55,47]

# total = 0 
# for i in range(len(x)):
#     total += x[i]
    
# # media = total / len(x)
# print(total)



# segundos = int(input("Entre com um número em segundos: "))

# horas = segundos // (60*60) # horas inteiras

# segundos = segundos % (60*60) # resto de segundos da divisao por hora

# minutos = segundos // 60 # minutos inteiros

# segundos = segundos % 60 # resto de segundos da divisão por minuto

# print(horas, minutos, segundos, sep=":")


import pandas as pd
import uuid
import random

# Função para gerar nomes de produtos aleatórios
def generate_product():
    products = ["Laptop", "Smartphone", "Tablet", "Headphones", "Keyboard", "Mouse", "Monitor", "Printer", "Camera", "Smartwatch"]
    return random.choice(products)

# Função para gerar um dataset com UUID, IDTransaction, Product e Quantity
def generate_product_data(n):
    data = []
    uuids = [str(uuid.uuid4()) for _ in range(50)]  # Gerar 50 UUIDs únicos
    
    for i in range(n):
        uuid_value = random.choice(uuids)
        trans_id = str(uuid.uuid4())
        product = generate_product()
        quantity = random.randint(1, 10)
        data.append([uuid_value, trans_id, product, quantity])
    
    return data

# Gerar o dataset com UUID, IDTransaction, Product e Quantity
product_data = generate_product_data(200)

# Criar o DataFrame para o terceiro arquivo
df3 = pd.DataFrame(product_data, columns=["UUID", "IDTransaction", "Product", "Quantity"])

csv_path3 = "uuid_transaction_product_quantity_200.csv"
df3.to_csv(csv_path3, index=False)

print(f"Arquivo {csv_path3} gerado com sucesso!")