module "md-rg"{
    source = "../../modules/azurerm_resource_group"
    rg = var.prg
}
module "md-virtual_network"{
    depends_on = [ module.md-rg ]
    source = "../../modules/azurerm_network"
    vnet = var.pvnet

}
module "md-subnet" {
    depends_on = [ module.md-virtual_network ]
    source = "../../modules/azurerm_subnet"
    sub = var.psub
} 

module "md-public_ip" {
    depends_on = [ module.md-rg ]
    source = "../../modules/azurerm_public_ip"
    pip = var.ppip
}

module "md-nic" {
    depends_on = [ module.md-public_ip, module.md-subnet ]
    source = "../../modules/azurerm_nic"
    nic = var.pnic
    data = var.pdata

}