variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "my-ec2"
  }
  
}

variable "instance_ami" {
  type = string
  default = "ami-099b3d23e336c2e83"
  
}

variable "instance_type" {
  type = string
  default = "tr.micro"
  
}

variable "nic_id" {
  type = string
  
}