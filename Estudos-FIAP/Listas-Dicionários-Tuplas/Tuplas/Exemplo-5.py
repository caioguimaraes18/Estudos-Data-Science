#método para validar a categoria informada
def validar_categoria(categoria_usuario):
    #verificando se a categoria digitada pelo usuário está presente na lista
    if categoria_usuario.upper() in categorias:
        #se estiver, é exibida essa mensagem
        print("Categoria válida!")
    else:
        #se não estiver, é exibida essa mensagem
        print("Categoria inválida!")
#lista com categorias de habilitação do DETRAN
categorias=["A", "B", "C", "D", "E"]