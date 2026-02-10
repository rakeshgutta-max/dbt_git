-- Model Name   : mart_profitability
-- Purpose      : The purpose of the dbt model "mart_profitability" is to calculate and group revenue, average order value, and revenue band by product ID from the "fct_sales" table.
-- Source Models: fct_sales
select
    product_id,
    sum(sale_usd) revenue,
    {{ safe_divide('sum(sale_usd)','count(order_id)') }} avg_order_value,
    {{ beastmode_case('sum(sale_usd)') }} revenue_band
from {{ ref('fct_sales') }}
group by product_id