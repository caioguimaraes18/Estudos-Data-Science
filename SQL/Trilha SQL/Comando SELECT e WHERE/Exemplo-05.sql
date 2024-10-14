-- Quantos produtos de 'beleza_saude' tem mais de 1 litros?

select 
    count(*) as qtd_produtos
from tb_products
where product_length_cm * product_height_cm * product_width_cm / 1000 < 1
and product_category_name = 'beleza_saude';