select
    order_id
    , order_item_id
    , product_id
    , price
from {{source('fivetran_database', 'olist_order_items_dataset')}}
group by 1,2,3,4