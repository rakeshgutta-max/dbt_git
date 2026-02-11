-- Model Name   : fct_sales
-- Purpose      : The purpose of the dbt model "fct_sales" is to consolidate and organize sales data, including order details, customer information, product specifics, and transaction amounts, in order to facilitate comprehensive analysis and informed decision-making for the business.
-- Source Models: int_sales_enriched
select
    i.order_id,
    i.customer_id,
    i.product_id,
    i.sale_usd,
    i.order_date
from {{ ref('int_sales_enriched') }} i