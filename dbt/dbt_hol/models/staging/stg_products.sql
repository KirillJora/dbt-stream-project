select 
    prod_port.product_id
    , prod_port.product_category_name as prod_name_br
    , prod_eng.product_category_name_english as prod_name_en
from {{source('fivetran_database', 'OLIST_PRODUCTS_DATASET')}} prod_port
left join {{source('fivetran_database', 'PRODUCT_CATEGORY_NAME_TRANSLATION')}} prod_eng
on prod_port.product_category_name = prod_eng.product_category_name
group by 1,2,3