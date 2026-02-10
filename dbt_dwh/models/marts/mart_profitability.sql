select
    product_id,
    sum(sale_usd) revenue,
    {{ safe_divide('sum(sale_usd)','count(order_id)') }} avg_order_value,
    {{ beastmode_case('sum(sale_usd)') }} revenue_band
from {{ ref('fct_sales') }}
group by product_id
