view: test1_seller_categories {
  sql_table_name: `olist.test1_seller_categories`
    ;;

  dimension: category_english {
    type: string
    sql: ${TABLE}.category_english ;;
  }

  dimension: category_portugese {
    type: string
    sql: ${TABLE}.category_portugese ;;
  }

  dimension: seller_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.seller_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sellers.seller_id]
  }
}
