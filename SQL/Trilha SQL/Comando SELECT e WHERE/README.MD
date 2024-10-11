# O que é o comando SELECT no SQL?

O comando SELECT é usado no SQL para buscar dados em um banco de dados. Ele permite que você escolha quais colunas deseja visualizar e de quais tabelas, além de ordenar, filtrar e formatar os resultados de diversas maneiras.

### Exemplo:

```sql
SELECT nome, idade FROM clientes;
```
Este comando busca os valores das colunas nome e idade na tabela clientes.

## O que é o comando WHERE no SQL?

O comando WHERE é usado para filtrar os resultados de uma consulta no SQL, mostrando apenas os dados que atendem a uma condição específica.

```sql
SELECT nome, idade FROM clientes WHERE idade > 30;
```

Neste exemplo, o comando seleciona todos os nomes e idades da tabela clientes, mas exibe apenas os registros onde a idade é maior que 30.