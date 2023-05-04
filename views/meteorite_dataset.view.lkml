view: meteorite_dataset {
  sql_table_name: `decisive-triode-363515.offshore.meteorite_dataset`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: fall {
    type: string
    sql: ${TABLE}.fall ;;
  }

  dimension: geo_location {
    type: string
    sql: ${TABLE}.GeoLocation ;;
  }

  dimension: mass__g_ {
    type: number
    sql: ${TABLE}.mass__g_ ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nametype {
    type: string
    sql: ${TABLE}.nametype ;;
  }

  dimension: recclass {
    type: string
    sql: ${TABLE}.recclass ;;
  }

  dimension: reclat {
    type: number
    sql: ${TABLE}.reclat ;;
  }

  dimension: reclong {
    type: number
    sql: ${TABLE}.reclong ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
