project_name: "ca-looker-development"

# The project to import
local_dependency: {
  project: "ca_looker_prod_deployment"
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

constant: database_cnn {
  value: "dev_test_conn"
}

constant: model_cnn {
  value: "dev_thelook_bq"
}
