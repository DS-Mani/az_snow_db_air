
{% snapshot customers_snapshot %}
{{
    config(
        target_schema='snapshots',      
        unique_key='customer_key',      
        strategy='check',               
        check_cols=['annual_income', 'email_address']  
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}