view: finance_expenses {
  sql_table_name: `decisive-triode-363515.SN_dataset.finance_expenses`
    ;;

  dimension: _actual_____ {
    type: number
    sql: ${TABLE}._Actual_____ ;;
  }

  dimension: _budget_____ {
    type: number
    sql: ${TABLE}._Budget_____ ;;
  }

  dimension: _vtb_____ {
    type: number
    sql: ${TABLE}._VTB_____ ;;
  }

  dimension: _yo_y_____ {
    type: number
    sql: ${TABLE}._YoY_____ ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.Classification ;;
  }

  dimension: function_summary {
    type: string
    sql: ${TABLE}.Function_Summary ;;
  }

  dimension: line_item {
    type: string
    sql: ${TABLE}.Line_Item ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
