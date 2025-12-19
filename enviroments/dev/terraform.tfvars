prg = {
  rg1 = {
    resource_group_name = "rg-101"
    location            = "West US"
  }
}

pvnet = {
  vnet1 = {
    vnet_name           = "vnet-101"
    location            = "West US"
    resource_group_name = "rg-101"

  }
}
psub = {
  sub1 = {
    sub_name             = "subnet-101"
    virtual_network_name = "vnet-101"
    resource_group_name  = "rg-101"
    address_prefixes     = ["10.0.2.0/26"]
  }
}
pnic = {
  nic1 = {
    nic_name            = "nic-101"
    location            = "West US"
    resource_group_name = "rg-101"
    # ip_configuration {
    #     name                          = "internal"
    #     #subnet_id                     = azurerm_subnet.az-sub.id
    #     private_ip_address_allocation = "Dynamic"
    # }

  }
}
pdata = {
  data1 = {
    data_name            = "data-101"
    virtual_network_name = "vnet-101"
    resource_group_name  = "rg-101"
  }
}


ppip = {
  pip1 = {
    pip_name            = "public_ip-101"
    resource_group_name = "rg-101"
    location            = "West US"
    allocation_method   = "Static"

  }
}
