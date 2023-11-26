select 
    order_by_product.order_id
    , order_by_product.product_id
    , products.prod_name_en
    , order_by_product.price
from {{ref("stg_order_by_product")}} order_by_product
left join 
{{ref("stg_products")}} products
on order_by_product.product_id = products.product_id
group by 1,2,3,4