
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select annual_income
from azdatabase.advwork_raw.stg_customers
where annual_income is null



  
  
      
    ) dbt_internal_test