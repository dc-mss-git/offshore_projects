view: energy_consumption_weekly {
  sql_table_name: `decisive-triode-363515.offshore.energy_consumption_weekly`
    ;;

  dimension: actual_kwh {
    type: number
    sql: ${TABLE}.actual_kwh ;;
  }

  dimension: actual_kwh_cwt_previous_year {
    type: number
    sql: ${TABLE}.actual_kwh_cwt_previous_year ;;
  }

  dimension: actual_kwh_present_year {
    type: number
    sql: ${TABLE}.actual_kwh_present_year ;;
  }

  dimension: actual_kwh_previous_year {
    type: number
    sql: ${TABLE}.actual_kwh_previous_year ;;
  }

  dimension: budget_kwh {
    type: number
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

  dimension: mm_kwh {
    type: number
    sql: ${TABLE}.mm_kwh ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: percent_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.percent_difference_actual_previous_and_present ;;
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
    sql: ${TABLE}.sort ;;
  }

  dimension: target_pounds_present_year {
    type: number
    sql: ${TABLE}.target_pounds_present_year ;;
  }

  dimension: usag_difference {
    type: number
    sql: ${TABLE}.usag_difference ;;
  }

  dimension: usage_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.usage_difference_actual_previous_and_present ;;
  }

  dimension: weeknum {
    type: number
    sql: ${TABLE}.Weeknum ;;
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

  dimension: ytd_cumulative_usage_difference {
    type: number
    sql: ${TABLE}.ytd_cumulative_usage_difference ;;
  }

  dimension: ytd_percent_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.ytd_percent_difference_actual_previous_and_present ;;
  }

  dimension: ytd_percent_of_budget {
    type: number
    sql: ${TABLE}.ytd_percent_of_budget ;;
  }

  dimension: ytd_usage_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.ytd_usage_difference_actual_previous_and_present ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
