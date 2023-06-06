view: supply_chain_sales_prices {
  sql_table_name: `decisive-triode-363515.SN_dataset.supply_chain_sales_prices`
    ;;

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: destination_port {
    type: string
    sql: ${TABLE}.Destination_Port ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: origin_port {
    type: string
    sql: ${TABLE}.Origin_Port ;;
  }

  dimension: plant_code {
    type: string
    sql: ${TABLE}.Plant_Code ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.Product_ID ;;
  }

  dimension: service_level {
    type: string
    sql: ${TABLE}.Service_Level ;;
  }

  dimension: ship_ahead_day_count {
    type: number
    sql: ${TABLE}.Ship_ahead_day_count ;;
  }

  dimension: ship_late_day_count {
    type: number
    sql: ${TABLE}.Ship_Late_Day_count ;;
  }

  dimension: tpt {
    type: number
    sql: ${TABLE}.TPT ;;
  }

  dimension: unit_quantity {
    type: number
    sql: ${TABLE}.Unit_quantity ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.Weight ;;
  }

  measure: count_products {
    type: count_distinct
    sql: ${TABLE}.Product_ID ;;
  }

  measure: count_customers {
    type: count_distinct
    sql: ${TABLE}.Customer ;;
  }

  measure: count_orders {
    type: count_distinct
    sql: ${TABLE}.Order_ID ;;
  }

  measure: count_plants {
    type: count_distinct
    sql: ${TABLE}.Plant_Code ;;
  }

  measure: order_weight {
    type: number
    value_format: "#"
    sql: sum(${weight}*${unit_quantity}) ;;
  }
}
