# Grupo By no SQL

## Introdução

O comando **GROUP BY** no SQL é utilizado para agrupar resultados de consultas com base em uma ou mais colunas. Ele permite que você agregue dados e aplique funções de agregação, como **SUM**, **AVG**, **COUNT**, entre outras, em cada grupo formado. O **GROUP BY** é especialmente útil para análises de dados, relatórios e visualizações, permitindo que você resuma informações de forma eficaz.

### Exemplo:

**Exemplo 1: Contar o número de vendas por produto**

```sql
SELECT produto, COUNT(*) AS total_vendas
FROM vendas
GROUP BY produto;
```
Neste exemplo, estamos contando quantas vendas ocorreram para cada produto. O resultado mostrará cada produto junto com o número total de vendas.

**Exemplo 2: Calcular a receita total por categoria**

```sql
SELECT categoria, SUM(preco) AS receita_total
FROM vendas
GROUP BY categoria;
```
Aqui, calculamos a receita total gerada por cada categoria de produtos. A função **SUM** agrega os preços das vendas por categoria.

**Exemplo 3: Média de idade por grupo de clientes**

```sql
SELECT grupo_cliente, AVG(idade) AS idade_media
FROM clientes
GROUP BY grupo_cliente;
```
Neste exemplo, estamos calculando a idade média de clientes em diferentes grupos (como 'VIP', 'Regular', etc.). O **AVG** é usado para calcular a média.

## Conclusão

O uso do **GROUP BY** no SQL é fundamental para realizar análises de dados mais complexas e significativas. Ele permite que você resuma informações, identifique padrões e obtenha insights valiosos a partir de conjuntos de dados extensos. Ao entender como e quando usar o **GROUP BY**, você pode melhorar significativamente suas consultas e relatórios, proporcionando uma visão mais clara e organizada dos dados.

