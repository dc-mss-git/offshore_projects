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
    type: number
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
    type: number
    sql: ${TABLE}.dimDiagnosisCodePK ;;
  }

  dimension: dim_location_pk {
    type: number
    sql: ${TABLE}.dimLocationPK ;;
  }

  dimension: dim_patient_pk {
    type: number
    sql: ${TABLE}.dimPatientPK ;;
  }

  dimension: dim_payer_pk {
    type: number
    sql: ${TABLE}.dimPayerPK ;;
  }

  dimension: dim_physician_pk {
    type: number
    sql: ${TABLE}.dimPhysicianPK ;;
  }

  dimension: dim_transaction_pk {
    type: number
    sql: ${TABLE}.dimTransactionPK ;;
  }

  dimension: fact_table_pk {
    type: number
    sql: ${TABLE}.FactTablePK ;;
  }

  dimension: gross_charge {
    type: number
    sql: ${TABLE}.GrossCharge ;;
  }

  dimension: patient_number {
    type: number
    sql: ${TABLE}.PatientNumber ;;
  }

  dimension: payment {
    type: number
    sql: ${TABLE}.Payment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
