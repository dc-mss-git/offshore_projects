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
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.Gross_Profit ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.Gross_Sales ;;
  }

  dimension: half_yearly {
    type: string
    sql: ${TABLE}.Half_Yearly ;;
  }

  dimension: net_sales {
    type: number
    sql: ${TABLE}.Net_Sales ;;
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
  }

  dimension: vtb____ {
    type: number
    sql: ${TABLE}.VTB____ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
