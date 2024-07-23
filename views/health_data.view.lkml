view: health_data {
  sql_table_name: `quantum-386219.offshore_data.health_data` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: calories {
    type: number
    sql: ${TABLE}.Calories ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: diss_name_for_men {
    type: string
    sql: ${TABLE}.Diss_Name_for_Men ;;
  }
  dimension: diss_name_for_women {
    type: string
    sql: ${TABLE}.Diss_Name_for_Women ;;
  }
  dimension: steps {
    type: number
    sql: ${TABLE}.Steps ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
