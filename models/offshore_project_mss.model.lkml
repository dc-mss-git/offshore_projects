connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"

datagroup: offshore_project_mss_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: offshore_project_mss_default_datagroup

explore: weather_history_report {}
explore: supply_chain_freight_rates{}
explore: supply_chain_sales_prices {}
explore: finance_expenses {}
explore: finance_sales {}
