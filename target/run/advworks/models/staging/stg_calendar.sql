
  create or replace   view azdatabase.advwork_raw.stg_calendar
  
   as (
    select "Date" as date , month(cast("Date" as date))  as month from AZDATABASE.ADVWORKS.ADVENTUREWORKS_CALENDAR
  );

