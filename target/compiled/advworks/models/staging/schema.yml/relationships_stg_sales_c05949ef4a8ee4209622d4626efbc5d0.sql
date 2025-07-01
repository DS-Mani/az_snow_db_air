
    
    

with child as (
    select territory_key as from_field
    from azdatabase.advwork_raw.stg_sales
    where territory_key is not null
),

parent as (
    select sales_territory_key as to_field
    from azdatabase.advwork_raw.stg_territories
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


