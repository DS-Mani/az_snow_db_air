
  create or replace   view azdatabase.advwork_raw.cal
  
   as (
    select * , month(cast("Date" as date))  as month from AZDATABASE.ADVWORKS.ADVENTUREWORKS_CALENDAR
  );

