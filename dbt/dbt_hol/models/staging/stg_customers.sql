select 
    customer_id
    , customer_unique_id
    , customer_city
    , customer_state
from {{source('fivetran_database','olist_customers_dataset')}}
group by 1,2,3,4