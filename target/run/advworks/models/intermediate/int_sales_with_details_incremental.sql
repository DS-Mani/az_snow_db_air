-- back compat for old kwarg name
  
  begin;
    
        
            
	    
	    
            
        
    

    

    merge into azdatabase.advwork_raw.int_sales_with_details_incremental as DBT_INTERNAL_DEST
        using azdatabase.advwork_raw.int_sales_with_details_incremental__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.order_number = DBT_INTERNAL_DEST.order_number))

    
    when matched then update set
        "ORDER_NUMBER" = DBT_INTERNAL_SOURCE."ORDER_NUMBER","ORDER_DATE" = DBT_INTERNAL_SOURCE."ORDER_DATE","CUSTOMER_KEY" = DBT_INTERNAL_SOURCE."CUSTOMER_KEY","PRODUCT_KEY" = DBT_INTERNAL_SOURCE."PRODUCT_KEY","ORDER_QUANTITY" = DBT_INTERNAL_SOURCE."ORDER_QUANTITY","REVENUE" = DBT_INTERNAL_SOURCE."REVENUE","CUSTOMER_NAME" = DBT_INTERNAL_SOURCE."CUSTOMER_NAME","PRODUCT_NAME" = DBT_INTERNAL_SOURCE."PRODUCT_NAME"
    

    when not matched then insert
        ("ORDER_NUMBER", "ORDER_DATE", "CUSTOMER_KEY", "PRODUCT_KEY", "ORDER_QUANTITY", "REVENUE", "CUSTOMER_NAME", "PRODUCT_NAME")
    values
        ("ORDER_NUMBER", "ORDER_DATE", "CUSTOMER_KEY", "PRODUCT_KEY", "ORDER_QUANTITY", "REVENUE", "CUSTOMER_NAME", "PRODUCT_NAME")

;
    commit;