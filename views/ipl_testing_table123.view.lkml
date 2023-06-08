view: ipl_testing_table123 {
  sql_table_name: `decisive-triode-363515.offshore.ipl_testing_table123`
    ;;

  dimension: looser {
    type: string
    sql: ${TABLE}.looser ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.margin ;;
  }

  dimension: team1 {
    type: string
    sql: ${TABLE}.team1 ;;
  }

  dimension: team2 {
    type: string
    sql: ${TABLE}.team2 ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
