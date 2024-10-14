-- Exercicio 1: Faça uma query que apresente o tamanho médio, máximo e minimo dos produtos por categoria.

select 
    product_category_name,
    max(product_height_cm) as max_height,
    min(product_height_cm) as min_height,
    avg(product_height_cm) as avg_height

from tb_products
where product_category_name is not null
group by product_category_name;



-- Exercicio 2: Faça uma query que apresente a quantidade de produtos por categoria, onde a quantidade de produtos é maior que 50.

select 
    product_category_name,
    max(product_height_cm) as max_height,
    min(product_height_cm) as min_height,
    avg(product_height_cm) as avg_height

from tb_products
where product_category_name is not null
group by product_category_name
having max(product_height_cm) > 50;


-- Exercicio 3: Faça uma query que apresente a quantidade de produtos por categoria, onde a descrição do produto seja maior que 50. E exiba apenas as categorias de tamanho médio de descrição maior que 100.

select 
    product_category_name,
    max(product_description_lenght) as max_description,
    min(product_description_lenght) as min_description,
    avg(product_description_lenght) as avg_description
from tb_products
where product_description_lenght > 50   
group by product_category_name
having avg(product_description_lenght) > 100;


