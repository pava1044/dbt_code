
{{ config(materialized='view') }}

With T1 as (
    Select * 
     from {{source('raj_technologies','STG_CUSTOMERS')}})
    
Select * from T1
