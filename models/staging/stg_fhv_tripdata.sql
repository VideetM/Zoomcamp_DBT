{{ config(materialized='view') }}

with
    trip_data as (


        select
            -- identifiers
            {{ dbt_utils.surrogate_key(["dispatching_base_num", "pickup_datetime"]) }}
            as tripid,
            cast(affiliated_base_number as string) as affiliated_base_number,
            -- data
            cast(dispatching_base_num as string) as dispatching_base_num,
            cast(sr_flag as integer) as sr_flag,
            cast(pulocationid as integer) as pickup_locationid,
            cast(dolocationid as integer) as dropoff_locationid,

            -- timestamps
            cast(pickup_datetime as timestamp) as pickup_datetime,
            cast(dropoff_datetime as timestamp) as dropoff_datetime

        from {{ source("staging", "fhv_data") }}
    )

select *
from trip_data


-- dbt build --m <model.sql> --var 'is_test_run: false'
{% if var("is_test_run", default=true) %} limit 100 {% endif %}
