{{ config(materialized="incremental",
          unique_key="SID",
          incremental_strategy="delete+insert")}}

select * from {{source("Supplier_Master_Data","Supplier_master_Insert_delete")}}