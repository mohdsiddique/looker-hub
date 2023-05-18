view: seller_earnings {
  sql_table_name: `olist.seller_earnings`
    ;;

  dimension: earnings {
    type: number
    sql: ${TABLE}.earnings ;;
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
