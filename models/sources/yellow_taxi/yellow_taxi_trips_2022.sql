{{
    config(materialized = 'view')
}}
select *
from read_parquet('~/Downloads/nyc_taxi_data/yellow_tripdata_2022*.parquet')
