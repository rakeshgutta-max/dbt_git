{% macro safe_divide(a,b) %}
    case when {{ b }} = 0 then null else {{ a }} / {{ b }} end
{% endmacro %}
