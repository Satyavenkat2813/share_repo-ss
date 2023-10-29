variable "vpc_id" {
    type = string
  
}
variable "sg_tag" {
    type = map(any)
    default = {
      "Name" = "my-sg"
    }
}