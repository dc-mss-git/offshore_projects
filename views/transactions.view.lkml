view: transactions {
  sql_table_name: `decisive-triode-363515.healthcare.Transactions`
    ;;
  drill_fields: [dim_transaction_pk]

  dimension: dim_transaction_pk {
    primary_key: yes
    type: string
    sql: ${TABLE}.dimTransactionPK ;;
  }

  dimension: adjustment_reason {
    type: string
    sql: ${TABLE}.AdjustmentReason ;;
  }

  dimension: transaction {
    type: string
    sql: ${TABLE}.Transaction ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TransactionType ;;
  }

  measure: count {
    type: count_distinct
    sql: ${dim_transaction_pk} ;;
  }
}
