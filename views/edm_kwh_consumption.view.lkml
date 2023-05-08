view: edm_kwh_consumption {
  sql_table_name: `decisive-triode-363515.energy_dataset.edm_kwh_consumption`
    ;;

  dimension: actual_kwh {
    type: string
    sql: ${TABLE}.actual_kwh ;;
  }

  dimension: actual_kwh_present_year {
    type: string
    sql: ${TABLE}.actual_kwh_present_year ;;
  }

  dimension: actual_kwh_previous_year {
    type: string
    sql: ${TABLE}.actual_kwh_previous_year ;;
  }

  dimension: budget_kwh {
    type: string
    sql: ${TABLE}.budget_kwh ;;
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

  dimension: mm {
    type: number
    sql: ${TABLE}.mm ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: percent_difference_previous_and_present {
    type: number
    sql: ${TABLE}.percent_difference_previous_and_present ;;
  }

  dimension: percent_of_budget {
    type: number
    sql: ${TABLE}.percent_of_budget ;;
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
    sql: ${TABLE}.Sort ;;
  }

  dimension: usage_difference_budget_and_actual {
    type: number
    sql: ${TABLE}.usage_difference_budget_and_actual ;;
  }

  dimension: usage_difference_previous_and_present_actual {
    type: number
    sql: ${TABLE}.usage_difference_previous_and_present_actual ;;
  }

  dimension: ytd_actual_kwh {
    type: number
    sql: ${TABLE}.ytd_actual_kwh ;;
  }

  dimension: ytd_actual_kwh_present_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_present_year ;;
  }

  dimension: ytd_actual_kwh_previous_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_previous_year ;;
  }

  dimension: ytd_budget_kwh {
    type: number
    sql: ${TABLE}.ytd_budget_kwh ;;
  }

  dimension: ytd_cumulative_percent_of_budget {
    type: number
    sql: ${TABLE}.ytd_cumulative_percent_of_budget ;;
  }

  dimension: ytd_cumulative_usage_difference {
    type: number
    sql: ${TABLE}.ytd_cumulative_usage_difference ;;
  }

  dimension: ytd_percent_difference {
    type: number
    sql: ${TABLE}.ytd_percent_difference ;;
  }

  dimension: ytd_usage_difference {
    type: number
    sql: ${TABLE}.ytd_usage_difference ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
