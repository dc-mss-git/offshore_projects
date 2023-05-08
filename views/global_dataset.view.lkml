view: global_dataset {
  sql_table_name: `decisive-triode-363515.offshore.global_dataset`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: imf_country_code {
    type: number
    sql: ${TABLE}.IMF_Country_Code ;;
  }

  dimension: indicator_type {
    type: string
    sql: ${TABLE}.Indicator_Type ;;
  }

  dimension: inflation {
    type: number
    sql: ${TABLE}.Inflation ;;
  }

  dimension: months {
    type: string
    sql: ${TABLE}.Months ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.Note ;;
  }

  dimension: series_name {
    type: string
    sql: ${TABLE}.Series_Name ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [series_name]
  }
}
