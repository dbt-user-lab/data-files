select 
    order_id, 
    product_id, 
    customer_id, 
    order_date, 
    order_amount, 
    created_date, 
    quantity, 
    to_date(last_modified_date) as lastmodified_date
from {{source('src_landing','src_sales')}}