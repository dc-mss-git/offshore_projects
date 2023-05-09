view: cpt_codes {
  sql_table_name: `decisive-triode-363515.healthcare.CPT_Codes`
    ;;

  dimension: cpt_code {
    type: string
    sql: ${TABLE}.CptCode ;;
  }

  dimension: cpt_desc {
    type: string
    sql: ${TABLE}.CptDesc ;;
  }

  dimension: cpt_grouping {
    type: string
    sql: ${TABLE}.CptGrouping ;;
  }

  dimension: dim_cptcode_pk {
    type: number
    sql: ${TABLE}.dimCPTCodePK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
