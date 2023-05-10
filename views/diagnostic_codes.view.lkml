view: diagnostic_codes {
  sql_table_name: `decisive-triode-363515.healthcare.Diagnostic_Codes`
    ;;

  dimension: diagnosis_code {
    type: string
    sql: ${TABLE}.DiagnosisCode ;;
  }

  dimension: diagnosis_code_description {
    type: string
    sql: ${TABLE}.DiagnosisCodeDescription ;;
  }

  dimension: diagnosis_code_group {
    type: string
    sql: ${TABLE}.DiagnosisCodeGroup ;;
  }

  dimension: dim_diagnosis_code_pk {
    type: string
    sql: ${TABLE}.dimDiagnosisCodePK ;;
  }

  measure: count {
    type: count_distinct
    sql: ${diagnosis_code} ;;
  }
}
