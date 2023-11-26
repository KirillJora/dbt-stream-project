select
    tr_revenue_report.order_date
    , tr_revenue_report.customer_state
    , tr_revenue_report.customer_city
    , count(distinct tr_revenue_report.order_id) as orders_vol
    , count(distinct tr_revenue_report.customer_id) as customers_vol
    , sum(tr_revenue_report.revenue) as total_revenue
    , coalesce(sum(tr_refunds.refunds_rev),0) as refunds
    , sum(tr_revenue_report.revenue) - coalesce(sum(tr_refunds.refunds_rev),0) as revenue_minus_refunds
from {{ref('tr_revenue_report')}} tr_revenue_report
left join {{ref('tr_refunds')}}  tr_refunds
on tr_revenue_report.order_date = tr_refunds.order_date
and tr_revenue_report.customer_state = tr_refunds.customer_state
and tr_revenue_report.customer_city = tr_refunds.customer_city
group by 1,2,3