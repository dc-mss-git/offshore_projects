connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"

datagroup: offshore_project_mss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: offshore_project_mss_default_datagroup

explore: superstore{}
explore: agriculture_seasonal_data1 {}
explore: insurance {}
explore: energy_consumption_monthly {}
explore: manufacturing_operations {}
explore: supply_chain_logistics {}
explore: energy_consumption_weekly {}
explore: tech_layoffs {}
explore: indian_cities_location {}
explore: us_zips {}
explore: us_cities_data {}
explore: weather_history_report {}
explore: customers_credit_card_dataset {}
explore: edm_kwh_consumption {}
explore:edm_production_data_monthly{}
explore: meteorite_dataset {}
explore: myntra_dataset {}
explore: global_dataset {}
explore: make_my_trip_dataset{}
explore:col_romania{}
explore:col_eu_cities_2021{}
explore:col_eu_cities_2022{}
explore:col_eu_2021{}
explore:col_eu_2022 {}
