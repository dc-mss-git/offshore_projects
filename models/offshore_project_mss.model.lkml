connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"

datagroup: offshore_project_mss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: offshore_project_mss_default_datagroup


explore: superstore{}

#explore: energy_consumption_monthly {}
#explore: energy_consumption_weekly {}
#explore: tech_layoffs {}
#explore: insurance {}
#explore: supply_chain_logistics {}
#explore: manufacturing_operations {}
#explore: amazn_dataset {}
#explore: crypto_dataset {}
#explore: road_accident_dataset {}
#explore: netflix_dataset {}
#explore: hotel_dataset {}
#explore: hr_dataste {}

explore: agriculture_seasonal_data1 {}
#explore: insurance {
explore: energy_consumption_monthly {}
#explore: manufacturing_operations {}
#explore: supply_chain_logistics {}
#explore: energy_consumption_weekly {}
#explore: tech_layoffs {}
#explore: indian_cities_location {}
#explore: us_zips {}
#explore: us_cities_data {}
#explore: weather_history_report {}
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

explore: weather_history_report {}
explore: supply_chain_freight_rates{}
explore: supply_chain_sales_prices {
  join: supply_chain_freight_rates {
    type: left_outer
    sql_on: ${supply_chain_freight_rates.carrier} = ${supply_chain_sales_prices.carrier}
    AND ${supply_chain_freight_rates.orig_port_cd}=${supply_chain_sales_prices.origin_port}
    AND ${supply_chain_freight_rates.dest_port_cd}=${supply_chain_sales_prices.destination_port}
    AND ${supply_chain_freight_rates.svc_cd}=${supply_chain_sales_prices.service_level}
    AND ${supply_chain_freight_rates.tpt_day_cnt}=${supply_chain_sales_prices.tpt};;
    relationship: many_to_one
  }
}
explore: finance_expenses {}
explore: finance_sales {}
