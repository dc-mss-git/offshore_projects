view: patient {
  sql_table_name: `decisive-triode-363515.healthcare.Patient`
    ;;
  drill_fields: [dim_patient_pk]

  dimension: dim_patient_pk {
    primary_key: yes
    type: string
    sql: ${TABLE}.dimPatientPK ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: patient_age {
    type: number
    sql: ${TABLE}.PatientAge ;;
  }

  dimension: patient_gender {
    type: string
    sql: ${TABLE}.PatientGender ;;
  }

  dimension: patient_number {
    type: string
    sql: ${TABLE}.PatientNumber ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [dim_patient_pk, first_name, last_name]
  }
}
