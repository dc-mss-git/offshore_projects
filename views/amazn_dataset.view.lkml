view: amazn_dataset {
  sql_table_name: `decisive-triode-363515.offshore.amazn_dataset`
    ;;

  dimension: about_product {
    type: string
    sql: ${TABLE}.about_product ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}.actual_price ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }

  dimension: discounted_price {
    type: number
    sql: ${TABLE}.discounted_price ;;
  }

  dimension: img_link {
    type: string
    sql: ${TABLE}.img_link ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_link {
    type: string
    sql: ${TABLE}.product_link ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.rating ;;
  }

  dimension: rating_count {
    type: number
    sql: ${TABLE}.rating_count ;;
  }

  dimension: review_content {
    type: string
    sql: ${TABLE}.review_content ;;
  }

  dimension: review_id {
    type: string
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_title {
    type: string
    sql: ${TABLE}.review_title ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name, product_name]
  }
}
