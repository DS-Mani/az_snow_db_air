
  
    

create or replace transient table azdatabase.advwork_raw.dim_calendar
    

    
    as (

select
    "Date" as date_day,
    to_date("Date") as date_actual,
    extract(year from to_date("Date")) as year,
    extract(month from to_date("Date")) as month,
    extract(day from to_date("Date")) as day,
    extract(quarter from to_date("Date")) as quarter

from AZDATABASE.ADVWORKS.ADVENTUREWORKS_CALENDAR
    )
;


  