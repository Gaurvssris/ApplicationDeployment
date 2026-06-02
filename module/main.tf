module "resource_group" {
source = "../azurerm_resource_group"
for_each = var.resource_groups
resource_group_name = each.value.name
location = each.value.location
}

# module "storage_account" {
# source = "../azurerm_storage_account"
# for_each = var.storage_accounts
# storage_account_name = each.value.name
# resource_group_name = module.resource_group[each.key].name
# location = module.resource_group[each.key].location
# }
module "acr" {
source = "../azurerm_acr"
for_each = var.acrs
acr_name = each.value.name
resource_group_name = module.resource_group[each.key].name
location = module.resource_group[each.key].location
}
module "aks" {
source = "../azurerm_aks"
for_each = var.aks_clusters
aks_name = each.value.name
node_count = each.value.node_count
vm_size = each.value.vm_size
resource_group_name = module.resource_group[each.key].name
location = module.resource_group[each.key].location
}