-- Model Name   : beastmode_case
-- Purpose      : The purpose of the "beastmode_case" dbt model is to categorize data values into 'High', 'Medium', and 'Low' based on the specified field's value, using a conditional case statement.
-- Source Models: N/A
{% macro beastmode_case(field) %}
case
    when {{ field }} > 1000 then 'High'
    when {{ field }} > 500 then 'Medium'
    else 'Low'
end
{% endmacro %}