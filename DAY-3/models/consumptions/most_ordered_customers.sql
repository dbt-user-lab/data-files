{{config(materialized='ephemeral')}}

select CUSTOMER_ID, sum(ORDER_AMOUNT) as tot_amt,
rank() over (order by sum(ORDER_AMOUNT)) as rnk
from {{ref('DBT_TRAINING_DEMO','int_sales')}}
group by CUSTOMER_ID
qualify rnk <=5

