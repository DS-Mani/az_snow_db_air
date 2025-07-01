
  
    

create or replace transient table azdatabase.advwork_raw.dim_territories
    

    
    as (

select
     territory_key ,
    continent,
    country,
    region
from azdatabase.advwork_raw.stg_territories
    )
;


  