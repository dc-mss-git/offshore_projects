view: col_eu_2021 {
  sql_table_name: `decisive-triode-363515.offshore.COL_EU_2021`
    ;;

  dimension: cost_of_living_index {
    type: number
    sql: ${TABLE}.Cost_of_Living_Index ;;
  }

  dimension: cost_of_living_plus_rent_index {
    type: number
    sql: ${TABLE}.Cost_of_Living_Plus_Rent_Index ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: groceries_index {
    type: number
    sql: ${TABLE}.Groceries_Index ;;
  }

  dimension: local_purchasing_power_index {
    type: number
    sql: ${TABLE}.Local_Purchasing_Power_Index ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: rent_index {
    type: number
    sql: ${TABLE}.Rent_Index ;;
  }

  dimension: restaurant_price_index {
    type: number
    sql: ${TABLE}.Restaurant_Price_Index ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
