select
    order_id
    , customer_id
    , order_status
    , date(order_purchase_timestamp) as order_date
from {{source('fivetran_database', 'OLIST_ORDERS_DATASET')}}
group by all