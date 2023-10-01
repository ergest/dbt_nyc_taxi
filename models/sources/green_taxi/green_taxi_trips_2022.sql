{{
    config(materialized = 'view')
}}
select *
from read_parquet('~/Downloads/nyc_taxi_data/green_tripdata_2021*.parquet')
