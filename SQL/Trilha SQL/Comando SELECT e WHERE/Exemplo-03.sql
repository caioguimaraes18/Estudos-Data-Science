-- Quantos produtos tem mais de 5 litros?

-- Criando uma coluna volume com centimetros cubicos


select 
    *,
    product_length_cm * product_height_cm * product_width_cm / 1000000 as volume
from tb_products
where product_length_cm * product_height_cm * product_width_cm / 1000000 > 5





