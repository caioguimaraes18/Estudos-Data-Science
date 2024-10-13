-- Criando uma consulta que retorna a quantidade de produtos e a quantidade de fotos de produtos que possuem mais de uma foto, para as categorias 'bebidas' e 'cama_mesa_banho'.


select 
    product_category_name as categoria,
    count(distinct product_id) as total_produtos,
    count(distinct product_photos_qty) as qtd_fotos
from tb_products
where (product_category_name = 'bebidas' and product_photos_qty > 1)
 or (product_category_name = 'cama_mesa_banho' and product_photos_qty > 5)
and product_photos_qty > 1
group by 1
order by 2 desc;


