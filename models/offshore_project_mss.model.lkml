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

explore:  main{
  join: cpt_codes{
    type: left_outer
    sql_on: ${cpt_codes.dim_cptcode_pk}=${main.dim_cptcode_pk} ;;
    relationship: many_to_one
  }
  join: diagnostic_codes{
    type: left_outer
    sql_on: ${diagnostic_codes.dim_diagnosis_code_pk}=${main.dim_diagnosis_code_pk} ;;
    relationship: many_to_one
  }
  join: location{
    type: left_outer
    sql_on: ${location.dim_location_pk}=${main.dim_location_pk};;
    relationship: many_to_one
  }
  join: patient{
    type: left_outer
    sql_on: ${patient.dim_patient_pk}=${main.dim_patient_pk} ;;
    relationship: many_to_one
  }
  join: payer{
    type: left_outer
    sql_on: ${main.dim_payer_pk}=${main.dim_payer_pk} ;;
    relationship: many_to_one
  }
  join: providers{
    type: left_outer
    sql_on: ${providers.dim_physician_pk}=${main.dim_physician_pk} ;;
    relationship: many_to_one
  }
  join: transactions{
    type: left_outer
    sql_on: ${transactions.dim_transaction_pk}=${main.dim_transaction_pk} ;;
    relationship: many_to_one
  }
  join: date{
    type: left_outer
    sql_on: ${date.dim_date_post_pk}=${main.dim_date_post_pk};;
    relationship: many_to_one
  }

}
explore:  cpt_codes{}
explore:  date{}
explore:  diagnostic_codes {}
explore:  location{}
explore:  patient{}
explore:  payer{}
explore:  providers{}
explore:  transactions{}
