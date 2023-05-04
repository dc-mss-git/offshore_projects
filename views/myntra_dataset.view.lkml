view: myntra_dataset {
  sql_table_name: `decisive-triode-363515.offshore.myntra_dataset`
    ;;

  dimension: brand_name {
    type: string
    sql: ${TABLE}.BrandName ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: category_by_gender {
    type: string
    sql: ${TABLE}.category_by_Gender ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: discount_offer {
    type: string
    sql: ${TABLE}.DiscountOffer ;;
  }

  dimension: discount_price__in_rs_ {
    type: number
    sql: ${TABLE}.DiscountPrice__in_Rs_ ;;
  }

  dimension: individual_category {
    type: string
    sql: ${TABLE}.Individual_category ;;
  }

  dimension: original_price__in_rs_ {
    type: number
    sql: ${TABLE}.OriginalPrice__in_Rs_ ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.Product_id ;;
  }

  dimension: ratings {
    type: number
    sql: ${TABLE}.Ratings ;;
  }

  dimension: reviews {
    type: number
    sql: ${TABLE}.Reviews ;;
  }

  dimension: size_option {
    type: string
    sql: ${TABLE}.SizeOption ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_name]
  }
  dimension: Total_Sales{
    type: number
    sql: ${original_price__in_rs_}- ${discount_price__in_rs_};;
  }

}
