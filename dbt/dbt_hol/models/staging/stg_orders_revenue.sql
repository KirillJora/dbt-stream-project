select
    order_id
    , sum(payment_value) as order_value
from {{source('fivetran_database', 'olist_order_payments_dataset')}}
group by 1