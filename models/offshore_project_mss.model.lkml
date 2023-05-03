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
