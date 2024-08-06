{% snapshot products_snapshot %}

  {{
      config(
        unique_key="product_id",
        strategy='timestamp',
        updated_at='lastmodified_date',
      )
  }}

select
    product_id,
    product_name,
    unitprice,
    created_date,
    lastmodified_date
from {{ source('landing','products') }}

{% endsnapshot %}