connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"

datagroup: offshore_project_mss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: offshore_project_mss_default_datagroup

explore: superstore{}
explore: energy_consumption_monthly {}
explore: energy_consumption_weekly {}
explore: tech_layoffs {}
explore: insurance {}
explore: supply_chain_logistics {}
explore: manufacturing_operations {}
explore: amazn_dataset {}
explore: crypto_dataset {}
explore: road_accident_dataset {}
explore: netflix_dataset {}
explore: hotel_dataset {}
explore: hr_dataste {}
