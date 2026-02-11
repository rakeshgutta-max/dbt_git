-- Purpose      : The purpose of the dbt model "stg_sales" is to consolidate and clean raw sales data, extracting key information such as order details, customer and product identifiers, sale amount, currency, and order date for further analysis and business insights.
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