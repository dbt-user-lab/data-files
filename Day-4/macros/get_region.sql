{% macro get_region(country) %}
    {%- set apac_countries = ('Bhutan', 'British Indian Ocean Territory (Chagos Archipelago)') -%}
    {%- set emea_countries = ('Greenland', 'Equatorial Guinea', 'Greece', 'Lesotho', 'Iran', 'Antarctica') -%}
    {%- set latam_countries = ('Antigua and Barbuda', 'Uruguay') -%}
    {%- set na_countries = ('United States of America', 'Canada') -%}
    case 
        when {{ country }} in {{ apac_countries }} then 'APAC'
        when {{ country }} in {{ emea_countries }} then 'EMEA'
        when {{ country }} in {{ latam_countries }} then 'LATAM'
        when {{ country }} in {{ na_countries }} then 'NA'
    end
{% endmacro %}