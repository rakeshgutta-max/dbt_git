-- Source Models: N/A
-- Model Name   : stg_customers
-- Purpose      : The purpose of the dbt model "stg_customers" is to consolidate and clean customer data, specifically their ID, name, and country of origin, from the "raw.customers" source table.
select
    customer_id,
    customer_name,
    country
from raw.customers