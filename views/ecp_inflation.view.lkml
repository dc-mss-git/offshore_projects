view: ecp_inflation {
  sql_table_name: `decisive-triode-363515.SN_dataset.ECP Inflation`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  measure: percent {
    type: number
    sql: ${TABLE}.Value ;;
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
