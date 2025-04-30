variable "rgname" {
    type = string
    description = "resource group name"
    default = "rg-test"
}
variable "location" {
  type = string
  description = "resource location"
  default = "south india"
}
variable "cosmosdb" {
  type = string
  description = "cosmos db"
  default = "cosmosdbtesting"
}
variable "kind" {
    type = string
    description = "kind name"
    default = "MongoDB"
}