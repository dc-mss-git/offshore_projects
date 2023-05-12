view: ecp_index {
  sql_table_name: `decisive-triode-363515.SN_dataset.ECP Index`
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

  measure: ecpi {
    type: sum
    sql: ${TABLE}.ECPI ;;
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
