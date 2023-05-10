view: main {
  sql_table_name: `decisive-triode-363515.healthcare.main`
    ;;

  dimension: adjustment {
    type: number
    sql: ${TABLE}.Adjustment ;;
  }

  dimension: ar {
    type: number
    sql: ${TABLE}.AR ;;
  }

  dimension: cptunits {
    type: number
    sql: ${TABLE}.CPTUnits ;;
  }

  dimension: dim_cptcode_pk {
    type: string
    sql: ${TABLE}.dimCPTCodePK ;;
  }

  dimension: dim_date_post_pk {
    type: number
    sql: ${TABLE}.dimDatePostPK ;;
  }

  dimension: dim_date_service_pk {
    type: number
    sql: ${TABLE}.dimDateServicePK ;;
  }

  dimension: dim_diagnosis_code_pk {
    type: string
    sql: ${TABLE}.dimDiagnosisCodePK ;;
  }

  dimension: dim_location_pk {
    type: string
    sql: ${TABLE}.dimLocationPK ;;
  }

  dimension: dim_patient_pk {
    type: string
    sql: ${TABLE}.dimPatientPK ;;
  }

  dimension: dim_payer_pk {
    type: string
    sql: ${TABLE}.dimPayerPK ;;
  }

  dimension: dim_physician_pk {
    type: string
    sql: ${TABLE}.dimPhysicianPK ;;
  }

  dimension: dim_transaction_pk {
    type: string
    sql: ${TABLE}.dimTransactionPK ;;
  }

  dimension: fact_table_pk {
    type: string
    sql: ${TABLE}.FactTablePK ;;
  }

  dimension: gross_charge {
    type: number
    sql: ${TABLE}.GrossCharge ;;
  }

  measure: total_charge{
    type: sum
    sql: ${TABLE}.GrossCharge ;;
    value_format: "$0.00"
  }

  dimension: patient_number {
    type: string
    sql: ${TABLE}.PatientNumber ;;
  }

  dimension: payment {
    type: number
    sql: ${TABLE}.Payment ;;
  }

  measure: count {
    type: count_distinct
    sql: ${fact_table_pk} ;;
  }

  measure: total_adjustment {
    type: sum
    sql: ${TABLE}.Adjustment ;;
    value_format: "$0.00"
  }

  measure: accounts_receivable {
    type: sum
    sql: ${TABLE}.AR ;;
    value_format: "$0.00"
  }
}
