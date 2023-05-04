view: supply_chain_freight_rates {
  sql_table_name: `decisive-triode-363515.SN_dataset.supply_chain_freight_rates`
    ;;

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: carrier_type {
    type: string
    sql: ${TABLE}.Carrier_type ;;
  }

  dimension: dest_port_cd {
    type: string
    sql: ${TABLE}.dest_port_cd ;;
  }

  dimension: max_wgh_qty {
    type: number
    sql: ${TABLE}.max_wgh_qty ;;
  }

  dimension: minimum_cost {
    type: number
    sql: ${TABLE}.minimum_cost ;;
  }

  dimension: minm_wgh_qty {
    type: number
    sql: ${TABLE}.minm_wgh_qty ;;
  }

  dimension: mode_dsc {
    type: string
    sql: ${TABLE}.mode_dsc ;;
  }

  dimension: orig_port_cd {
    type: string
    sql: ${TABLE}.orig_port_cd ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: svc_cd {
    type: string
    sql: ${TABLE}.svc_cd ;;
  }

  dimension: tpt_day_cnt {
    type: number
    sql: ${TABLE}.tpt_day_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
