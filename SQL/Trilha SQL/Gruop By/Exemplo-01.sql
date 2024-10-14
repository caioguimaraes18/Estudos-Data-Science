-- Aula: 1. Agrupando dados
-- Usando o grupo by, podemos agrupar os dados de acordo com uma coluna específica.

select 
    product_category_name,
    count(*) as qtd_produtos,
    max(product_weight_g) as max_width,
    min(product_weight_g) as min_weight,
    avg(product_weight_g) as avg_weight
from tb_products
where product_category_name is not null
group by product_category_name;