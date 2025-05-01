variable "rgname" {
    type = string
    description = "resource group name"
    default = "cosmos-rg"
}
variable "location" {
  type = string
  description = "resource location"
  default = "Central India"
}
variable "cosmosdb" {
  type = string
  default = "demo-sg-sdb"
}

variable "kind" {
  type = string
  default = "MongoDB"
}
variable "pename" {
  type = string
  default = "demo-pes-g"
}
variable "peconnectionname" {
  type = string
  default = "pconn-dem-sg"
}
# variable "subnet_id" {
  
# }
variable "subresource_names" {
 default = ["MongoDB"]
}