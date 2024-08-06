{{config(schema = 'consumptions')}}

select CUSTOMER_NAME, COUNTRY  from 
{{ref('DBT_TRAINING_DEMO','int_customers')}} cust 
join {{ref('DBT_TRAINING_DEMO','most_ordered_customers')}} top_customer
on cust.customer_id = top_customer.customer_id