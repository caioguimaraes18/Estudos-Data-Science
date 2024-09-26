def Saudacao(pPeriodo, *pNomes):
    for Nome in pNomes:
        if pPeriodo.lower() in ("manhã", "m"):
            print(f"Olá {Nome}, bom dia!")
        elif pPeriodo.lower() in ("tarde", "t"):
            print(f"Olá {Nome}, boa tarde!")
        else:
            print(f"Olá {Nome}, boa noite!")
            
Saudacao("manhã", "João", "Maria", "José")