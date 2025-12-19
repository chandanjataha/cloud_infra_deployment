data "azurerm_subnet" "az-sub" {
  for_each             = var.data
  name                 = each.value.data_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
variable "data" {}


