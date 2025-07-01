
  
    

create or replace transient table azdatabase.advwork_raw.int_sales_incremental
    

    
    as (

with stg_sa as (
    select * 
    from azdatabase.advwork_raw.stg_sales
    
),

stg_prod as (
    select * from azdatabase.advwork_raw.stg_products
),

stg_cust as (
    select * from azdatabase.advwork_raw.stg_customers
)

select 
    sa.order_number,
    sa.order_date,
    sa.customer_key,
    sa.product_key,
    sa.order_quantity as total_quantity,
    sa.order_quantity * p.price as total_revenue,
    coalesce(c.first_name, 'Unknown') as first_name,
    coalesce(p.product_name, 'Unknown') as product_name

from stg_sa sa 
left join stg_prod p on sa.product_key = p.product_key
left join stg_cust c on sa.customer_key = c.customer_key
    )
;


  