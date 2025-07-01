

select
    fs.order_date,
    dc.customer_key,
    dc.first_name,
    dp.product_key,
    dp.product_name,
    dt.region,
    fs.total_quantity,
    fs.total_revenue

from azdatabase.advwork_raw.fct_sales fs
left join azdatabase.advwork_raw.dim_customers dc using (customer_key)
left join azdatabase.advwork_raw.dim_products dp using (product_key)
left join azdatabase.advwork_raw.dim_territories dt using (territory_key)