
  
    

create or replace transient table azdatabase.advwork_raw.fct_returns
    

    
    as (-- models/marts/fct_returns.sql


select
    r.product_key,
    r.territory_key,
    r.return_date,
    sum(r.return_quantity) as total_return_quantity

from azdatabase.advwork_raw.stg_returns r
group by 1, 2, 3
    )
;


  