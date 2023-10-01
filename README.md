# Welcome to the NYC Taxi Trip dbt project!

## Initial Setup

To set up the project you'll need a Python environment set up with dbt-duckdb. I use Conda but you can use whatever you like

### Set up the initial dbt environment
1. Create a new conda environment for dbt `conda create -n dbt python=3.11`
2. Activate the new environment `conda activate dbt`
3. Install `dbt-core` and `dbt-duckdb`: `pip install dbt-duckdb`
4. Verify that `dbt` has been installed via: `dbt --version`
5. Clone this repo: `git clone https://github.com/ergest/dbt_nyc_taxi.git`

### Build the database
1. Build the database: `dbt run` or `dbt build`

### Use the database
1. Install DuckDB. See [here](https://duckdb.org/#quickinstall)
2. Open the database in DuckDB CLI or the client of your choice. `duckdb nyc_taxi.ddb`
3. View the tables/views built: `D show tables;`
4. Query a specific table: `D select * from for_hire_verhicle_trips_2021`
