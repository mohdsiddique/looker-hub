view: sellers {
  sql_table_name: `olist.sellers`
    ;;
  drill_fields: [seller_id]

  dimension: seller_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.seller_id ;;
  }

  dimension: seller_city {
    type: string
    sql: ${TABLE}.seller_city ;;
  }

  dimension: seller_state {
    type: string
    sql: ${TABLE}.seller_state ;;
  }

  dimension: seller_zip_code_prefix {
    type: number
    sql: ${TABLE}.seller_zip_code_prefix ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      seller_id,
      new_seller_categories.count,
      new2_seller_categories.count,
      order_items.count,
      seller_categories.count,
      test_seller_categories.count,
      seller_earnings.count,
      test1_seller_categories.count
    ]
  }
}
