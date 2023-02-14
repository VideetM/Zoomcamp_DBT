
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select *
    FROM {{ source('ny_taxi_data', 'fhv_data') }}

)

select *
from source_data
limit 100

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
