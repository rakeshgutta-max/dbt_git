-- Model Name   : currency_convert
-- Purpose      : The purpose of the dbt model "currency_convert" is to accurately convert monetary amounts from various currencies to USD using exchange rates obtained from the "exchange_rates" table.
-- Source Models: exchange_rates
{% macro convert_to_usd(amount, currency) %}
    {{ amount }} * (
        select rate_to_usd
        from {{ ref('exchange_rates') }}
        where currency = {{ currency }}
    )
{% endmacro %}