view: crypto_dataset {
  sql_table_name: `decisive-triode-363515.offshore.crypto_dataset`
    ;;

  dimension: _1h {
    type: number
    sql: ${TABLE}._1h ;;
  }

  dimension: _1h_12 {
    type: number
    sql: ${TABLE}._1h_12 ;;
  }

  dimension: _24h {
    type: number
    sql: ${TABLE}._24h ;;
  }

  dimension: _24h_13 {
    type: number
    sql: ${TABLE}._24h_13 ;;
  }

  dimension: _24h_volume {
    type: number
    sql: ${TABLE}._24h_volume ;;
  }

  dimension: _24h_volume_15 {
    type: number
    sql: ${TABLE}._24h_volume_15 ;;
  }

  dimension: _7d {
    type: number
    sql: ${TABLE}._7d ;;
  }

  dimension: _7d_14 {
    type: number
    sql: ${TABLE}._7d_14 ;;
  }

  dimension: coin {
    type: string
    sql: ${TABLE}.coin ;;
  }

  dimension: coin_9 {
    type: string
    sql: ${TABLE}.coin_9 ;;
  }

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
    sql: ${TABLE}.date ;;
  }

  dimension_group: date_17 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_17 ;;
  }

  dimension: mkt_cap {
    type: number
    sql: ${TABLE}.mkt_cap ;;
  }

  dimension: mkt_cap_16 {
    type: number
    sql: ${TABLE}.mkt_cap_16 ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_11 {
    type: number
    sql: ${TABLE}.price_11 ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: symbol_10 {
    type: string
    sql: ${TABLE}.symbol_10 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


}
