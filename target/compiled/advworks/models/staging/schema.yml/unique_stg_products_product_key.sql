
    
    

select
    product_key as unique_field,
    count(*) as n_records

from azdatabase.advwork_raw.stg_products
where product_key is not null
group by product_key
having count(*) > 1


