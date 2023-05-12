view: country_codes {
  sql_table_name: `decisive-triode-363515.SN_dataset.country_codes`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.Date ;;
  }

  dimension: fcpi {
    type: number
    sql: ${TABLE}.FCPI ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
