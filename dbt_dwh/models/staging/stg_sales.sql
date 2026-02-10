-- Source Models: N/A
-- Model Name   : stg_sales
-- Purpose      : The purpose of the dbt model "stg_sales" is to consolidate and cleanse raw sales data by extracting order_id, customer_id, product_id, sale_amount, currency, and order_date from the "sales" table in the "raw" schema, enabling accurate analysis and reporting of sales performance.
select
    order_id,
    customer_id,
    product_id,
    sale_amount,
    currency,
    order_date
from raw.sales