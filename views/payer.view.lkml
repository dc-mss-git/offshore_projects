view: payer {
  sql_table_name: `decisive-triode-363515.healthcare.Payer`
    ;;
  drill_fields: [dim_payer_pk]

  dimension: dim_payer_pk {
    primary_key: yes
    type: number
    sql: ${TABLE}.dimPayerPK ;;
  }

  dimension: payer_name {
    type: string
    sql: ${TABLE}.PayerName ;;
  }

  measure: count {
    type: count
    drill_fields: [dim_payer_pk, payer_name]
  }
}
