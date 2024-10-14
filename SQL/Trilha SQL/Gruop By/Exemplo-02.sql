select
    seller_city,
    count(distinct seller_id) as qtd_vendedores

from tb_sellers
where seller_city in ('sao paulo', 'rio de janeiro', 'parana')
group by seller_city;



-- Usando o comando HAVING para filtrar os dados agrupados
select 
    seller_state,
    count(*) as qtd_vendidas
from tb_sellers
where 1=1
group by seller_state
having count(*) > 30
;


