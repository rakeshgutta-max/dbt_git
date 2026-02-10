{% macro convert_to_usd(amount, currency) %}
    {{ amount }} * (
        select rate_to_usd
        from {{ ref('exchange_rates') }}
        where currency = {{ currency }}
    )
{% endmacro %}
