select
    product_id as product_id,
    trim(product_name) as product_name, 
    unit_price as unit_price,
    created_date as created_date,
    lastmodified_date as lastmodified_date
from {{ ref('raw_products') }}