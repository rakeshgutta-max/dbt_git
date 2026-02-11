-- Source Models: N/A
-- Model Name   : stg_customers
select
    customer_id,
    customer_name,
    country
from raw.customers
-- Purpose      : The purpose of the dbt model "stg_customers" is to extract and structure essential customer information, including customer ID, name, and country, from the raw data source for further analysis and processing.
