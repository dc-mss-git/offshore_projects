view: hotel_dataset {
  sql_table_name: `decisive-triode-363515.offshore.hotel_dataset`
    ;;

  dimension_group: arrival {
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
    sql: ${TABLE}.Arrival_Date ;;
  }

  dimension: avg_daily_rate {
    type: number
    sql: ${TABLE}.Avg_Daily_Rate ;;
  }

  dimension_group: booking {
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
    sql: ${TABLE}.Booking_Date ;;
  }

  dimension: booking_id {
    type: number
    sql: ${TABLE}.Booking_ID ;;
  }

  dimension: cancelled__0_1_ {
    type: number
    sql: ${TABLE}.Cancelled__0_1_ ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  dimension: deposit_type {
    type: string
    sql: ${TABLE}.Deposit_Type ;;
  }

  dimension: distribution_channel {
    type: string
    sql: ${TABLE}.Distribution_Channel ;;
  }

  dimension: guests {
    type: number
    sql: ${TABLE}.Guests ;;
  }

  dimension: hotel {
    type: string
    sql: ${TABLE}.Hotel ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.Lead_Time ;;
  }

  dimension: nights {
    type: number
    sql: ${TABLE}.Nights ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: revenue_loss {
    type: number
    sql: ${TABLE}.Revenue_Loss ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension_group: status_update {
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
    sql: ${TABLE}.Status_Update ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
