select 
    product_category_name as categoria,
    count(distinct product_id) as total_produtos,
    count(distinct product_photos_qty) as qtd_fotos
    


from tb_products
group by 1
order by 2 desc
;





-- with produtos as (
--     select 
--         product_category_name as categoria,
--         count(distinct product_id) as total_produtos
--     from tb_products
--     group by 1
-- ),

-- select * from tb_product_category_name_translation limit 10;