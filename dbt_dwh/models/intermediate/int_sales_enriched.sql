
select
    s.*,
    {{ convert_to_usd('sale_amount','currency') }} as sale_usd
from {{ ref('stg_sales') }} s
-- Purpose      : The purpose of the "int_sales_enriched" dbt model is to enrich the sales data by converting the sale amounts to USD and including additional relevant information from the "stg_sales" source, providing a comprehensive view of sales performance.