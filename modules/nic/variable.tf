variable "sn_id" {
  type = string 
}
variable "nic_tag" {
  type = map(any)
  default = {
    "Name" = "Primary_network_interface"
  }
}

