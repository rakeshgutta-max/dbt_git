-- Model Name   : fct_sale
-- Source Models: int_sales_enrich
select
    i.order_id,
    i.customer_id,
    i.product_id,
    i.sale_usd,
    i.order_date
from {{ ref('int_sales_enriched') }} i