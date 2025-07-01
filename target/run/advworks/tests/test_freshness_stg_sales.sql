
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  select * 
from azdatabase.advwork_raw.stg_sales
where order_date < current_date - interval '7 day'
  
  
      
    ) dbt_internal_test