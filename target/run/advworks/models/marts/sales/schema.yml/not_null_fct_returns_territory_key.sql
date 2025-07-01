
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select territory_key
from azdatabase.advwork_raw.fct_returns
where territory_key is null



  
  
      
    ) dbt_internal_test