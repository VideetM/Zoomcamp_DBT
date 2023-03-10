{{ config(materialized="table") }}

with
    fhv_data as (select *, 'fhv' as service_type from {{ ref("stg_fhv_tripdata") }}),



    dim_zones as (select * from {{ ref("dim_zones") }} where borough != 'Unknown')
select
    fhv_data.tripid,
    fhv_data.dispatching_base_num,
    fhv_data.affiliated_base_number,
    fhv_data.pickup_locationid,
    fhv_data.dropoff_locationid,
    fhv_data.pickup_datetime,
    fhv_data.dropoff_datetime,
    fhv_data.sr_flag,
    fhv_data.service_type,
    extract(month from pickup_datetime) as pickup_month,
    extract(month from dropoff_datetime) as dropoff_month





from fhv_data
inner join
    dim_zones as pickup_zone on fhv_data.pickup_locationid = pickup_zone.locationid
inner join
    dim_zones as dropoff_zone on fhv_data.dropoff_locationid = dropoff_zone.locationid
