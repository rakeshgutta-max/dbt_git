-- Purpose      : The purpose of the dbt model "stg_customers" is to transform raw customer data from the "raw_customers" table by renaming and selecting relevant fields, resulting in a clean and structured dataset for further analysis and modeling.
-- Source Models: raw_customers
-- Model Name   : stg_customers

with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed