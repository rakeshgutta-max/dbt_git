{% macro beastmode_case(field) %}
case
    when {{ field }} > 1000 then 'High'
    when {{ field }} > 500 then 'Medium'
    else 'Low'
end
{% endmacro %}
