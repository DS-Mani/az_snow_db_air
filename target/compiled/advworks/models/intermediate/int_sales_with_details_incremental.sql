

with stg_sa as (
    select * from azdatabase.advwork_raw.stg_sales

    
      where order_date > (select max(order_date) from azdatabase.advwork_raw.int_sales_with_details_incremental)
    
),

stg_cust as (
    select * from azdatabase.advwork_raw.stg_customers
),

stg_prod as (
    select * from azdatabase.advwork_raw.stg_products
)

select
    sa.order_number,
    sa.order_date,
    sa.customer_key,
    sa.product_key,
    sa.order_quantity,
    sa.order_quantity * prod.price as revenue,
    coalesce(cust.first_name, 'Unknown') as customer_name,
    coalesce(prod.product_name, 'Unknown') as product_name

from stg_sa sa
left join stg_cust cust on sa.customer_key = cust.customer_key
left join stg_prod prod on sa.product_key = prod.product_key