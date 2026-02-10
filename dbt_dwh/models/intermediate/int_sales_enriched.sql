select
    s.*,
    {{ convert_to_usd('sale_amount','currency') }} as sale_usd
from {{ ref('stg_sales') }} s
