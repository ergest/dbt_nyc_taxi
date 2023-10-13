#!/bin/bash

start_year=2021
end_year=2023

patterns=("yellow" "green" "fhv")

download_dir=$1

if [ -z "$download_dir" ]; then
  echo "Usage: $0 <download_dir>"
  exit 1
fi

for pattern in "${patterns[@]}"; do
  for year in $(seq $start_year $end_year); do
    for month in {01..12}; do
      month="$(printf "%02d" "$month")"
      url="https://d37ci6vzurychx.cloudfront.net/trip-data/${pattern}_tripdata_${year}-${month}.parquet"
      wget -P "$download_dir" "$url"
    done
  done
done
