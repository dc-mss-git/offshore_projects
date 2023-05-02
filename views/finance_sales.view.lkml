view: finance_sales {
  sql_table_name: `decisive-triode-363515.SN_dataset.finance_sales`
    ;;

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: cogs {
    type: number
    sql: ${TABLE}.COGS ;;
    value_format: "0.00"
  }

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.Customer_Segment ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension_group: fiscal {
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
    sql: ${TABLE}.Fiscal_Date ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Fiscal_Month ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Fiscal_Quarter ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Fiscal_Year ;;
  }

  dimension: forecasted_sales {
    type: number
    sql: ${TABLE}.Forecasted_Sales ;;
    value_format: "0.00"
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.Gross_Profit ;;
    value_format: "0.00"
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.Gross_Sales ;;
    value_format: "0.00"
  }

  dimension: half_yearly {
    type: string
    sql: ${TABLE}.Half_Yearly ;;
  }

  dimension: net_sales {
    type: number
    sql: ${TABLE}.Net_Sales ;;
    value_format: "0.00"
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.Product_Category ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: stock_budget {
    type: number
    sql: ${TABLE}.Stock_Budget ;;
    value_format: "0.00"
  }

  dimension: VTB {
    type: number
    sql: ${TABLE}.VTB____ ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: VTB_percent {
    type: number
    sql: 100*(sum(${VTB})/sum(${stock_budget}));;
    value_format: "0.00"
  }
}
