
    
    

select
    sales_territory_key as unique_field,
    count(*) as n_records

from azdatabase.advwork_raw.dim_territories
where sales_territory_key is not null
group by sales_territory_key
having count(*) > 1


