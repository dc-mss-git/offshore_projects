view: movie_dataset {
  sql_table_name: `quantum-386219.dataset1.movie_dataset`
    ;;

  dimension: budget_cost {
    type: number
    sql: ${TABLE}.Budget_Cost ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}.Genre ;;
  }

  dimension: movie_ratings {
    type: string
    sql: ${TABLE}.MovieRatings ;;
  }

  dimension: movie_title {
    type: string
    sql: ${TABLE}.Movie_Title ;;
  }

  dimension: release_date {
    type: number
    sql: ${TABLE}.Release_Date ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: studio_company {
    type: string
    sql: ${TABLE}.Studio_Company ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
