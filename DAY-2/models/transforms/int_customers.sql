

select
    customer_id as customer_id,
    trim(name) as customer_name, 
    trim(country) as country, 
    to_date(created_date) as created_date,
    to_date(lastmodified_date) as lastmodified_date
from {{ ref('DBT_TRAINING_DEMO','raw_customers') }}
