variable "resource_groups" {

  type = map(object({
    name     = string
    location = string
  }))

}

# variable "storage_accounts" {

#   type = map(object({
#     name = string
#   }))

# }
variable "acrs" {
type = map(object({
name = string
}))
}
variable "aks_clusters" {
type = map(object({
name       = string
node_count = number
vm_size    = string
}))
}