
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sales_territory_key
from azdatabase.advwork_raw.dim_territories
where sales_territory_key is null



  
  
      
    ) dbt_internal_test