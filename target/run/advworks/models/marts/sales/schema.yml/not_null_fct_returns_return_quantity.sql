
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select return_quantity
from azdatabase.advwork_raw.fct_returns
where return_quantity is null



  
  
      
    ) dbt_internal_test