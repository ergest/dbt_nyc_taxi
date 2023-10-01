{{
    config(materialized = 'view')
}}
select *
from read_parquet('~/Downloads/nyc_taxi_data/fhv_tripdata_2021*.parquet')
