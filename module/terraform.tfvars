resource_groups = {

  rg1 = {
    name     = "dev-rg"
    location = "Central India"
  }

  rg2 = {
    name     = "test-rg"
    location = "East US"
  }

  rg3 = {
    name     = "prod-rg"
    location = "West Europe"
  }

}

# storage_accounts = {

#   rg1 = {
#     name = "strgdev12345678"
#   }

#   rg2 = {
#     name = "strgtest12345678"
#   }

#   rg3 = {
#     name = "strgprod12345678"
#   }
# }
acrs = {
rg1 = {
    name = "acrdev12345"
  }
rg2 = {
    name = "acrtest12345"
  }
rg3 = {
    name = "acrprod12345"
  }

}
aks_clusters = {
rg1 = {
name       = "dev-aks"
node_count = 1
vm_size    = "Standard_B2s"
}
rg2 = {
name       = "test-aks"
node_count = 2
vm_size    = "Standard_B2s"
}
rg3 = {
name       = "prod-aks"
node_count = 3
vm_size    = "Standard_D2s_v3"
}
}