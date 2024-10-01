import streamlit as st

def jedi():
    name = st.text_input('Nome do personagem')
    age = st.number_input('Idade do personagem', value=0, step=1, min_value=0, max_value=1000)
    return name, age

def main():
    st.title('Personagem de Star Wars')
    st.subheader('Adicione um novo personagem')
    
    name, age = jedi()
    st.write('Selecione a categoria do Jedi que você perntece')
    category = st.radio('Categoria', ('Padawan', 'Cavaleiro Jedi', 'Mestre Jedi'))
    
    submit = st.button('Adicionar')
    
    
    if submit:
        st.write('Seus dados foram enviados com sucesso!')
        
        st.write(f'O Jedi de nome {name}, com {age} anos de idade, é classificado como {category}.')    
        
        st.write('-------------------------------------------')
        st.image('Estudos-FIAP/Bibliotecas/Yoda.jpg', width=200)
        
        
if __name__ == '__main__':
    main()
    
    
    