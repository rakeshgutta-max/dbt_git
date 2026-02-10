-- Source Models: N/A
-- Model Name   : stg_customers
select
    customer_id,
    customer_name,
    country
from raw.customers