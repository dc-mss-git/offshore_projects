view: road_accident_dataset {
  sql_table_name: `decisive-triode-363515.offshore.road_accident_dataset`
    ;;

  dimension_group: accident {
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
    sql: ${TABLE}.Accident_Date ;;
  }

  dimension: accident_index {
    type: string
    sql: ${TABLE}.Accident_Index ;;
  }

  dimension: accident_severity {
    type: string
    sql: ${TABLE}.Accident_Severity ;;
  }

  dimension: carriageway_hazards {
    type: string
    sql: ${TABLE}.Carriageway_Hazards ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.Day_of_Week ;;
  }

  dimension: junction_control {
    type: string
    sql: ${TABLE}.Junction_Control ;;
  }

  dimension: junction_detail {
    type: string
    sql: ${TABLE}.Junction_Detail ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: light_conditions {
    type: string
    sql: ${TABLE}.Light_Conditions ;;
  }

  dimension: local_authority__district_ {
    type: string
    sql: ${TABLE}.Local_Authority__District_ ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: number_of_casualties {
    type: number
    sql: ${TABLE}.Number_of_Casualties ;;
  }

  dimension: number_of_vehicles {
    type: number
    sql: ${TABLE}.Number_of_Vehicles ;;
  }

  dimension: police_force {
    type: string
    sql: ${TABLE}.Police_Force ;;
  }

  dimension: road_surface_conditions {
    type: string
    sql: ${TABLE}.Road_Surface_Conditions ;;
  }

  dimension: road_type {
    type: string
    sql: ${TABLE}.Road_Type ;;
  }

  dimension: speed_limit {
    type: number
    sql: ${TABLE}.Speed_limit ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: urban_or_rural_area {
    type: string
    sql: ${TABLE}.Urban_or_Rural_Area ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.Vehicle_Type ;;
  }

  dimension: weather_conditions {
    type: string
    sql: ${TABLE}.Weather_Conditions ;;
  }

  dimension: abhi {
    type: string
    sql: ${TABLE}.speed_limit ;;
    html: <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQavXQ9TKhkoPcK326RJBUh9F_FIZUTqPhGdcG5xym7rYNdln9rS4XDsub8ELcr0ctslR8&usqp=CAU" /> ;;
  }
  dimension: abhishek {
    type: string
    sql: ${TABLE}.speed_limit ;;
    html: <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSiw9e1h4jnBvgqBQPQc0d1EvsgSsmxsDVJQ&usqp=CAU=" /> ;;
  }
  dimension: abhishek012 {
    type: string
    sql: ${TABLE}.speed_limit ;;
    html: <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXeB0WEJlxKa5ZekyYkD4NMkz8DGIOm9mueg&usqp=CAU" /> ;;
  }
     measure: count {
    type: count
    drill_fields: []
  }
}
