view: netflix_dataset {
  sql_table_name: `decisive-triode-363515.offshore.netflix_dataset`
    ;;

  dimension: actors {
    type: string
    sql: ${TABLE}.Actors ;;
  }

  dimension: awards_nominated_for {
    type: number
    sql: ${TABLE}.Awards_Nominated_For ;;
  }

  dimension: awards_received {
    type: number
    sql: ${TABLE}.Awards_Received ;;
  }

  dimension: boxoffice {
    type: string
    sql: ${TABLE}.Boxoffice ;;
  }

  dimension: country_availability {
    type: string
    sql: ${TABLE}.Country_Availability ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}.Genre ;;
  }

  dimension: genre_2 {
    type: string
    sql: ${TABLE}.Genre_2 ;;
  }

  dimension: hidden_gem_score {
    type: number
    sql: ${TABLE}.Hidden_Gem_Score ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.Image ;;
  }

  dimension: imdb_link {
    type: string
    sql: ${TABLE}.IMDb_Link ;;
  }

  dimension: imdb_score {
    type: number
    sql: ${TABLE}.IMDb_Score ;;
  }

  dimension: imdb_votes {
    type: number
    sql: ${TABLE}.IMDb_Votes ;;
  }

  dimension: languages {
    type: string
    sql: ${TABLE}.Languages ;;
  }

  dimension: metacritic_score {
    type: number
    sql: ${TABLE}.Metacritic_Score ;;
  }

  dimension: netflix_link {
    type: string
    sql: ${TABLE}.Netflix_Link ;;
  }

  dimension_group: netflix_release {
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
    sql: ${TABLE}.Netflix_Release_Date ;;
  }



  dimension: poster {
    type: string
    sql: ${TABLE}.Poster ;;
  }

  dimension: production_house {
    type: string
    sql: ${TABLE}.Production_House ;;
  }

  dimension_group: release_date {
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
    sql: ${TABLE}.Release_Date ;;
  }

  dimension: rotten_tomatoes_score {
    type: number
    sql: ${TABLE}.Rotten_Tomatoes_Score ;;
  }

  dimension: runtime {
    type: string
    sql: ${TABLE}.Runtime ;;
  }

  dimension: series_or_movie {
    type: string
    sql: ${TABLE}.Series_or_Movie ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: tmdb_trailer {
    type: string
    sql: ${TABLE}.TMDb_Trailer ;;
  }

  dimension: trailer_site {
    type: string
    sql: ${TABLE}.Trailer_Site ;;
  }

  dimension: view_rating {
    type: string
    sql: ${TABLE}.View_Rating ;;
  }

  dimension: writer {
    type: string
    sql: ${TABLE}.Writer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
