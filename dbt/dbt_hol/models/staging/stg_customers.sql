select 
    customer_id
    , customer_unique_id
    , customer_city
    , customer_state
from {{source('fivetran_database', 'OLIST_CUSTOMERS_DATASET')}}
group by 1,2,3,4