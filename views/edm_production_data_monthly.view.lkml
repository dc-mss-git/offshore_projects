view: edm_production_data_monthly {
  sql_table_name: `decisive-triode-363515.energy_dataset.edm_production_data_monthly`
    ;;

  dimension: actual_cwt_present_year {
    type: number
    sql: ${TABLE}.actual_cwt_present_year ;;
  }

  dimension: actual_cwt_previous_year {
    type: number
    sql: ${TABLE}.actual_cwt_previous_year ;;
  }

  dimension: actual_kwh_cwt_present_year {
    type: number
    sql: ${TABLE}.actual_kwh_cwt_present_year ;;
  }

  dimension: actual_kwh_cwt_previous_year {
    type: number
    sql: ${TABLE}.actual_kwh_cwt_previous_year ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension: district {
    type: number
    sql: ${TABLE}.district ;;
  }

  dimension: mm_prod {
    type: number
    sql: ${TABLE}.mm_prod ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: percent_difference_cwt {
    type: number
    sql: ${TABLE}.percent_difference_cwt ;;
  }

  dimension: percent_difference_previous_and_present_actual_kwh_cwt {
    type: number
    sql: ${TABLE}.percent_difference_previous_and_present_actual_kwh_cwt ;;
  }

  dimension: production_difference_previous_and_present_cwt {
    type: number
    sql: ${TABLE}.production_difference_previous_and_present_cwt ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  dimension: usage_difference_kwh_cwt {
    type: number
    sql: ${TABLE}.usage_difference_kwh_cwt ;;
  }

  dimension: ytd_actual_cwt_present_year {
    type: number
    sql: ${TABLE}.ytd_actual_cwt_present_year ;;
  }

  dimension: ytd_actual_cwt_previous_year {
    type: number
    sql: ${TABLE}.ytd_actual_cwt_previous_year ;;
  }

  dimension: ytd_actual_kwh_cwt_present_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_cwt_present_year ;;
  }

  dimension: ytd_actual_kwh_cwt_previous_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_cwt_previous_year ;;
  }

  dimension: ytd_percent_difference_cwt {
    type: number
    sql: ${TABLE}.ytd_percent_difference_cwt ;;
  }

  dimension: ytd_percent_difference_kwh_cwt {
    type: number
    sql: ${TABLE}.ytd_percent_difference_kwh_cwt ;;
  }

  dimension: ytd_production_difference_kwh_cwt {
    type: number
    sql: ${TABLE}.ytd_production_difference_kwh_cwt ;;
  }

  dimension: ytd_usage_difference_previous_and_present_actual_cwt {
    type: number
    sql: ${TABLE}.ytd_usage_difference_previous_and_present_actual_cwt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
