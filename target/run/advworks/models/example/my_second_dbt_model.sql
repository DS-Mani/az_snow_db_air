
  create or replace   view azdatabase.advwork_raw.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from azdatabase.advwork_raw.my_first_dbt_model
where id = 1
  );

