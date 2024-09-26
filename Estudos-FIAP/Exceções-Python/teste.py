try:
    x = 5 + '5'
except TypeError:
    print("Erro de tipo de dados!")
else:
    print("Nenhum erro ocorreu")
finally:
    print("Fim da execução")
