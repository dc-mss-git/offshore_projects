view: hcp_index {
  sql_table_name: `decisive-triode-363515.SN_dataset.HCP Index`
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

  measure: hcpi {
    type: sum
    sql: ${TABLE}.HCPI ;;
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
