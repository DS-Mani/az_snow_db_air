
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        gender as value_field,
        count(*) as n_records

    from azdatabase.advwork_raw.stg_customers
    group by gender

)

select *
from all_values
where value_field not in (
    'M','F'
)



  
  
      
    ) dbt_internal_test