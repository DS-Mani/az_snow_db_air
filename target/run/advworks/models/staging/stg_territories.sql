
  create or replace   view azdatabase.advwork_raw.stg_territories
  
   as (
    

select 
    "Continent" as continent,
    "Country" as country,
    "Region" as region,
    "SalesTerritoryKey" as territory_key

from AZDATABASE.ADVWORKS.ADVENTUREWORKS_TERRITORIES
  );

