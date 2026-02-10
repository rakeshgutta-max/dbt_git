-- Model Name   : dim_customers
-- Purpose      : The purpose of the dim_customers model is to consolidate customer information, including unique identifiers, names, and countries of origin, from the stg_customers source data.
-- Source Models: stg_customers
select
    customer_id,
    customer_name,
    country
from {{ ref('stg_customers') }}