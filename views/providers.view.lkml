view: providers {
  sql_table_name: `decisive-triode-363515.healthcare.Providers`
    ;;

  dimension: dim_physician_pk {
    type: number
    sql: ${TABLE}.dimPhysicianPK ;;
  }

  dimension: provider_fte {
    type: number
    sql: ${TABLE}.ProviderFTE ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.ProviderName ;;
  }

  dimension: provider_npi {
    type: number
    sql: ${TABLE}.ProviderNpi ;;
  }

  dimension: provider_specialty {
    type: string
    sql: ${TABLE}.ProviderSpecialty ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_name]
  }
}
