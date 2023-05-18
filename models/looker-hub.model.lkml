connection: "acryl-bq"

# include all the views
include: "/views/**/*.view"

include: "//datahub-demo/views/datahub-demo/datasets/faa_flights.view.lkml"

datagroup: looker-hub_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker-hub_default_datagroup

explore: new_seller_categories {
  join: sellers {
    type: left_outer
    sql_on: ${new_seller_categories.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: customer_orders {}

explore: category_english {}

explore: new2_seller_categories {
  join: sellers {
    type: left_outer
    sql_on: ${new2_seller_categories.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: order_payments {}

explore: order_items {
  join: products {
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: sellers {
    type: left_outer
    sql_on: ${order_items.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: products {}

explore: sellers {}

explore: seller_categories {
  join: sellers {
    type: left_outer
    sql_on: ${seller_categories.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: test_seller_categories {
  join: sellers {
    type: left_outer
    sql_on: ${test_seller_categories.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: seller_earnings {
  join: sellers {
    type: left_outer
    sql_on: ${seller_earnings.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: test1_seller_categories {
  join: sellers {
    type: left_outer
    sql_on: ${test1_seller_categories.seller_id} = ${sellers.seller_id} ;;
    relationship: many_to_one
  }
}

explore: faa_flights_explore {
  view_name: faa_flights
}
