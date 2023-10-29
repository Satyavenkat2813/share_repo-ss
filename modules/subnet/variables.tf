variable "vpc_id" {
  type = string
}
variable "sn_cidr" {
  type    = string
  default = "10.0.0.0/24" 
}
variable "sn_tag" {
  type = map(any)
  default = {
    "Name" = "my-sn"
  }  
}