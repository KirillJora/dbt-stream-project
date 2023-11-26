select
    order_id
    , sum(payment_value) as order_value
from {{source('fivetran_database', 'OLIST_ORDER_PAYMENTS_DATASET')}}
group by 1