select * 
from azdatabase.advwork_raw.stg_sales
where order_date < current_date - interval '7 day'