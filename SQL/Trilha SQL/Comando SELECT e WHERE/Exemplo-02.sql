



  select 
    count(distinct seller_id) as qtd_vendedores,
    count(distinct seller_city) as qtd_cidades,
    count(distinct seller_state) as qtd_estados

   from tb_sellers
   
   ;
