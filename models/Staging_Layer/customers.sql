
{{ config(materialized='view') }}

With table1 as (
    Select * 
     from {{source('raj_technologies','STG_CUSTOMERS')}})
    
Select * from table1
