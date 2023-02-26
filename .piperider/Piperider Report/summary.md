<details>
<summary>Comparison Summary</summary>

Table | Rows | Columns 
--- | --- | ---
dim_zones | 265 (+0) | 4 (+0) 
dm_monthly_zone_revenue | 5594 (-472) | 15 (+0) 
fact_trips | 15904074 (-29788855) | 27 (+0) 
fact_fhv_trips | 0 (-22998722) | 11 (+0) 


</details>
<details>
<summary>Tables Summary</summary>
<blockquote>

<details>
<summary>dim_zones</summary>

Column | Type | Valid % | Distinct %
--- | --- | --- | ---
locationid | NUMERIC | 100.0% (+0.0%) | 100.0% (+0.0%) 
borough | VARCHAR | 100.0% (+0.0%) | 2.64% (+0.0%) 
zone | VARCHAR | 100.0% (+0.0%) | 98.87% (+0.0%) 
service_zone | VARCHAR | 100.0% (+0.0%) | 1.89% (+0.0%) 

</details>
<details>
<summary>dm_monthly_zone_revenue</summary>

Column | Type | Valid % | Distinct %
--- | --- | --- | ---
revenue_zone | VARCHAR | 100.0% (+0.0%) | 4.63% (+0.36%) 
revenue_month | TIMESTAMP | 100.0% (+0.0%) | 0.21% (+0.02%) 
service_type | VARCHAR | 100.0% (+0.0%) | 0.04% (+0.0%) 
revenue_monthly_fare | NUMERIC | 100.0% (+0.0%) | 92.94% (-2.79%) 
revenue_monthly_extra | NUMERIC | 100.0% (+0.0%) | 29.85% (-11.9%) 
revenue_monthly_mta_tax | NUMERIC | 100.0% (+0.0%) | 26.65% (-13.85%) 
revenue_monthly_tip_amount | NUMERIC | 100.0% (+0.0%) | 74.24% (-7.23%) 
revenue_monthly_tolls_amount | NUMERIC | 100.0% (+0.0%) | 32.02% (-26.61%) 
revenue_monthly_ehail_fee | NUMERIC | 53.79% (+2.72%) | 0.03% (-0.06%) 
revenue_monthly_improvement_surcharge | NUMERIC | 100.0% (+0.0%) | 26.74% (-12.54%) 
revenue_monthly_total_amount | NUMERIC | 100.0% (+0.0%) | 97.57% (-1.89%) 
revenue_monthly_congestion_surcharge | NUMERIC | 100.0% (+0.49%) | 22.35% (-4.91%) 
total_monthly_trips | INTEGER | 100.0% (+0.0%) | 26.62% (-13.69%) 
avg_montly_passenger_count | FLOAT | 100.0% (+0.0%) | 59.03% (-19.87%) 
avg_montly_trip_distance | NUMERIC | 100.0% (+0.0%) | 95.46% (-2.74%) 

</details>
<details>
<summary>fact_trips</summary>

Column | Type | Valid % | Distinct %
--- | --- | --- | ---
tripid | VARCHAR | 100.0% (+0.0%) | 95.69% (+4.74%) 
vendorid | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
service_type | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
ratecodeid | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
pickup_locationid | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
pickup_borough | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
pickup_zone | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
dropoff_locationid | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
dropoff_borough | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
dropoff_zone | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
pickup_datetime | TIMESTAMP | 100.0% (+0.0%) | 73.54% (+15.92%) 
dropoff_datetime | TIMESTAMP | 100.0% (+0.0%) | 64.7% (+15.0%) 
store_and_fwd_flag | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
passenger_count | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
trip_distance | NUMERIC | 100.0% (+0.0%) | 0.03% (+0.02%) 
trip_type | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
fare_amount | NUMERIC | 100.0% (+0.0%) | 0.03% (+0.01%) 
extra | NUMERIC | 100.0% (+0.0%) | 0.0% (+0.0%) 
mta_tax | NUMERIC | 100.0% (+0.0%) | 0.0% (+0.0%) 
tip_amount | NUMERIC | 100.0% (+0.0%) | 0.02% (+0.01%) 
tolls_amount | NUMERIC | 100.0% (+0.0%) | 0.01% (+0.0%) 
ehail_fee | NUMERIC | 92.82% (+4.01%) | 0.0% (+0.0%) 
improvement_surcharge | NUMERIC | 100.0% (+0.0%) | 0.0% (+0.0%) 
total_amount | NUMERIC | 100.0% (+0.0%) | 0.08% (+0.05%) 
payment_type | INTEGER | 100.0% (+0.0%) | 0.0% (+0.0%) 
payment_type_description | VARCHAR | 100.0% (+0.0%) | 0.0% (+0.0%) 
congestion_surcharge | NUMERIC | 100.0% (+6.12%) | 0.0% (+0.0%) 

</details>
<details>
<summary>fact_fhv_trips</summary>

Column | Type | Valid % | Distinct %
--- | --- | --- | ---
tripid | VARCHAR | - | - 
dispatching_base_num | VARCHAR | - | - 
affiliated_base_number | VARCHAR | - | - 
pickup_locationid | INTEGER | - | - 
dropoff_locationid | INTEGER | - | - 
pickup_datetime | TIMESTAMP | - | - 
dropoff_datetime | TIMESTAMP | - | - 
sr_flag | INTEGER | - | - 
service_type | VARCHAR | - | - 
pickup_month | INTEGER | - | - 
dropoff_month | INTEGER | - | - 

</details>
</blockquote></details>