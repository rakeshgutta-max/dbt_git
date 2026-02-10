-- Model Name   : fct_sales
-- Purpose      : The fct_sales model consolidates essential sales data, including order details, customer information, product specifics, sale amount, and order date, to provide a comprehensive view of sales performance.
-- Source Models: int_sales_enriched
select
    i.order_id,
    i.customer_id,
    i.product_id,
    i.sale_usd,
    i.order_date
from {{ ref('int_sales_enriched') }} i