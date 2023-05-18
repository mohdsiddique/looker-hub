view: customer_orders {
  sql_table_name: `olist.customer_orders`
    ;;

  dimension: customer_city {
    type: string
    sql: ${TABLE}.customer_city ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: customer_unique_id {
    type: string
    sql: ${TABLE}.customer_unique_id ;;
  }

  dimension: customer_zip_code_prefix {
    type: number
    sql: ${TABLE}.customer_zip_code_prefix ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
