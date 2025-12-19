
resource "azurerm_network_interface" "az-nic" {
  for_each            = var.nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.az-sub[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
variable "nic" {}

