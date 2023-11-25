select
    order_id
    , customer_id
    , order_status
    , date(order_purchase_timestamp) as order_date
from {{source('fivetran_database', 'olist_orders_dataset')}}
group by all