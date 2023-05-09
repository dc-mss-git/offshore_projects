view: location {
  sql_table_name: `decisive-triode-363515.healthcare.Location`
    ;;
  drill_fields: [dim_location_pk]

  dimension: dim_location_pk {
    primary_key: yes
    type: number
    sql: ${TABLE}.dimLocationPK ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LocationName ;;
  }

  measure: count {
    type: count
    drill_fields: [dim_location_pk, location_name]
  }
}
