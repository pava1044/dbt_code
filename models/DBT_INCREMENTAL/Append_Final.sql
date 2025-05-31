{{ config(materialized="incremental",
unique_key = "SID" ,
incremental_strategy="append")}}

Select * from {{source("Supplier_Master_Data","Supplier_master_append")}}