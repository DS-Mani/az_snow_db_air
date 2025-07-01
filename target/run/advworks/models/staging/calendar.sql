
  create or replace   view azdatabase.advwork_raw.calendar
  
   as (
    select * , month(cast("Date" as date))  as month from AZDATABASE.ADVWORKS.ADVENTUREWORKS_CALENDAR
  );

