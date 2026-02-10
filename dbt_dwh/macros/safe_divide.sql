-- Source Models: N/A
-- Model Name   : safe_divide
-- Purpose      : The purpose of the dbt model "safe_divide" is to prevent division by zero errors by returning null when the denominator is zero, thus ensuring accurate and reliable calculations in financial and statistical analyses.
{% macro safe_divide(a,b) %}
    case when {{ b }} = 0 then null else {{ a }} / {{ b }} end
{% endmacro %}