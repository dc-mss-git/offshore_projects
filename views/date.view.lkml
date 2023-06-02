view: date {
  sql_table_name: `decisive-triode-363515.healthcare.Date`
    ;;

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.DayName ;;
  }

  dimension: dim_date_post_pk {
    type: number
    sql: ${TABLE}.dimDatePostPK ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: month_period {
    type: number
    sql: ${TABLE}.MonthPeriod ;;
  }

  dimension: month_year {
    type: string
    sql: ${TABLE}.MonthYear ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [day_name]
  }
}
