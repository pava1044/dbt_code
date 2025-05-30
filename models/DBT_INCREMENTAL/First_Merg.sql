{{ config(materialized= "incremental", 
   unique_key = "SID",
   incremental_strategy = "merge") }}

 Select * from {{source('Supplier_Master_Data','Suppiler_Master')}} 

