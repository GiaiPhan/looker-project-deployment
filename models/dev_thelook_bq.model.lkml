connection: "@{database_cnn}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*.dashboard.lookml"
# include: "//ca_looker_prod_deployment/explores/aircraft_new.explore.lkml"
include: "//ca_looker_prod_deployment/explores/users_test.explore.lkml"
include: "//ca_looker_prod_deployment/views/users_test.view.lkml"



access_grant: product_users {
  user_attribute: team
  allowed_values: ["product"]
}

access_grant: marketing_users {
  user_attribute: team
  allowed_values: ["marketing"]
}

explore: order_items {
  required_access_grants: [product_users]
  join: users {
    view_label: "Users"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: products {
    view_label: "Products"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.product_id} = ${products.id} ;;
  }
}

explore: users_test {}
