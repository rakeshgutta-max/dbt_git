-- Source Models: N/A
-- Model Name   : stg_sales
select
    order_id,
    customer_id,
    product_id,
    sale_amount,
    currency,
    order_date
from raw.sales