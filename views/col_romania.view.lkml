view: col_romania {
  sql_table_name: `decisive-triode-363515.offshore.COL_Romania`
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.Item ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.LocationType ;;
  }

  dimension: range_value_1 {
    type: number
    sql: ${TABLE}.Range_Value_1 ;;
  }

  dimension: range_value_2 {
    type: number
    sql: ${TABLE}.Range_Value_2 ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
