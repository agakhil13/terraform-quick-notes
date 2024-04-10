locals {
  project_roles = [
    "${var.prefix1}=>roles/owner",
    "${var.prefix1}=>roles/viewer",
  ]
  names           = [for s in var.names : lower(s)]
  name_role_pairs = setproduct(local.names, toset(local.project_roles))
  project_roles_map_data = zipmap(
    [for pair in local.name_role_pairs : "${pair[0]}-${pair[1]}"],
    [for pair in local.name_role_pairs : {
      name = pair[0]
      role = pair[1]
    }]
  )

}
# output "project_roles" {
#   value = local.project_roles
# }
# output "names" {
#   value = local.names
# }
# output "name_role_pairs" {
#   value = local.name_role_pairs
# }
output "project_roles_map_data" {
  value = local.project_roles_map_data
}
