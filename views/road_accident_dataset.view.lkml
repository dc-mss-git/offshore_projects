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


     measure: count {
    type: count
    drill_fields: []
  }

  dimension: bike {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/10805/10805747.png"  height="100" width="100">  ;;

  }


  dimension: Bus {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/808/808375.png"  height="100" width="100">  ;;

  }

  dimension: Agricultural  {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/2548/2548758.png"  height="100" width="100">  ;;

  }

  dimension: car {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/3097/3097180.png"  height="100" width="100">  ;;

  }

  dimension: Van {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/3097/3097194.png"  height="100" width="100">  ;;

  }

  dimension: others {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/8017/8017243.png"  height="100" width="100">  ;;

  }
  dimension: month_number {
    type: number
    sql: EXTRACT(MONTH FROM  ${accident_date}) ;;
  }
  dimension: month_name {
    type: string
    sql: CASE
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 1 THEN 'January'
      WHEN EXTRACT(MONTH FROM ${accident_date}) = 2 THEN 'February'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 3 THEN 'March'
      WHEN EXTRACT(MONTH FROM ${accident_date}) = 4 THEN 'April'
      WHEN EXTRACT(MONTH FROM ${accident_date}) = 5 THEN 'May'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 6 THEN 'June'
      WHEN EXTRACT(MONTH FROM ${accident_date}) = 7 THEN 'July'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 8 THEN 'August'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 9 THEN 'September'
      WHEN EXTRACT(MONTH FROM ${accident_date}) = 10 THEN 'October'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 11 THEN 'November'
      WHEN EXTRACT(MONTH FROM  ${accident_date}) = 12 THEN 'December'
      END ;;
     }


  dimension:Vechile_image{
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/2293/2293294.png"  height="50" width="50">  ;;

  }

  dimension: severity_image{
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/3209/3209018.png"  height="50" width="50">  ;;

  }

  dimension: junction_image {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/93/93495.png"  height="50" width="50">  ;;

  }

  dimension: junction_controling_image{
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/1950/1950804.png"   height="50" width="50">  ;;

  }

  dimension: accident_image {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/2125/2125190.png"   height="50" width="50">  ;;

  }

  dimension: casualitie_image {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/5996/5996300.png"   height="50" width="50">  ;;

  }

  dimension: no_vechile_image {
    type: string
    sql:${TABLE}.Vehicle_Type ;;
    html: <img src="https://cdn-icons-png.flaticon.com/128/6747/6747513.png"   height="50" width="50">  ;;

  }


}
