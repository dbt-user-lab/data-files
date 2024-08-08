{% snapshot products_snapshot_check %}

  {{
      config(
        target_schema='snapshot',
        unique_key='product_id',
        strategy='check',
        check_cols='all'
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