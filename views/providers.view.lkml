view: providers {
  sql_table_name: `decisive-triode-363515.healthcare.Providers`
    ;;

  dimension: dim_physician_pk {
    type: string
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
    type: string
    sql: ${TABLE}.ProviderNpi ;;
  }

  dimension: provider_specialty {
    type: string
    sql: ${TABLE}.ProviderSpecialty ;;
  }

  measure: count {
    type: count_distinct
    sql: ${dim_physician_pk};;
  }
}
