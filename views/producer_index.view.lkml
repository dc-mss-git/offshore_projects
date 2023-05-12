view: producer_index {
  sql_table_name: `decisive-triode-363515.SN_dataset.Producer Index`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  measure: ppi {
    type: number
    sql: ${TABLE}.PPI ;;
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
