view: customers_credit_card_dataset {
  sql_table_name: `decisive-triode-363515.offshore.customers_credit_card_dataset`
    ;;

  dimension: attrition_flag {
    type: string
    sql: ${TABLE}.Attrition_Flag ;;
  }

  dimension: avg_open_to_buy {
    type: number
    sql: ${TABLE}.Avg_Open_To_Buy ;;
  }

  dimension: avg_utilization_ratio {
    type: number
    sql: ${TABLE}.Avg_Utilization_Ratio ;;
  }

  dimension: card_category {
    type: string
    sql: ${TABLE}.Card_Category ;;
  }

  dimension_group: card_opening {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.card_opening_date ;;
  }

  dimension: clientnum {
    type: number
    sql: ${TABLE}.CLIENTNUM ;;
  }

  dimension: contacts_count_12_mon {
    type: number
    sql: ${TABLE}.Contacts_Count_12_mon ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.Credit_Limit ;;
  }

  dimension: customer_age {
    type: number
    sql: ${TABLE}.Customer_Age ;;
  }

  dimension: dependent_count {
    type: number
    sql: ${TABLE}.Dependent_count ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.Education_Level ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: income_category {
    type: string
    sql: ${TABLE}.Income_Category ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.Marital_Status ;;
  }

  dimension: months_inactive_12_mon {
    type: number
    sql: ${TABLE}.Months_Inactive_12_mon ;;
  }

  dimension: months_on_book {
    type: number
    sql: ${TABLE}.Months_on_book ;;
  }

  dimension: naive_bayes_classifier_attrition_flag_card_category_contacts_count_12_mon_dependent_count_education_level_months_inactive_12_mon_1 {
    type: number
    sql: ${TABLE}.Naive_Bayes_Classifier_Attrition_Flag_Card_Category_Contacts_Count_12_mon_Dependent_count_Education_Level_Months_Inactive_12_mon_1 ;;
  }

  dimension: naive_bayes_classifier_attrition_flag_card_category_contacts_count_12_mon_dependent_count_education_level_months_inactive_12_mon_2 {
    type: number
    sql: ${TABLE}.Naive_Bayes_Classifier_Attrition_Flag_Card_Category_Contacts_Count_12_mon_Dependent_count_Education_Level_Months_Inactive_12_mon_2 ;;
  }

  dimension: total_amt_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Amt_Chng_Q4_Q1 ;;
  }

  dimension: total_ct_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Ct_Chng_Q4_Q1 ;;
  }

  dimension: total_relationship_count {
    type: number
    sql: ${TABLE}.Total_Relationship_Count ;;
  }

  dimension: total_revolving_bal {
    type: number
    sql: ${TABLE}.Total_Revolving_Bal ;;
  }

  dimension: total_trans_amt {
    type: number
    sql: ${TABLE}.Total_Trans_Amt ;;
  }

  dimension: total_trans_ct {
    type: number
    sql: ${TABLE}.Total_Trans_Ct ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
