select
    orders.order_date
    , orders.customer_city
    , orders.customer_state
    , products.prod_name_en
    , count(distinct products.order_id) as orders_done
    , sum(products.price)*count(distinct products.order_id) as prod_revenue_received
    , coalesce(sum(refunds.refunds_rev),0) as refunds
from {{ref('tr_prod_report')}} products
left join {{ref('tr_revenue_report')}} orders
on products.order_id = orders.order_id
left join {{ref('tr_refunds')}} refunds
on products.order_id = refunds.order_id
group by 1,2,3,4