variable "region" {
    type = string
    default = "ap-south-1"
    description = "this is for selecting the region"
  
}
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"  
}
variable "vpc_tag" {
    type = map(any)

    default = {
      "Name" = "vpc-1"
    }  
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

variable "sg_tag" {
    type = map(any)
    default = {
      "Name" = "my-sg"
    }
}


variable "nic_tag" {
  type = map(any)
  default = {
    "Name" = "Primary_network_interface"
  }
}

variable "pvt_ips" {
    type = list(string)
    default = [ "10.0.0.220" ]
  
}

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
  default = "t2.micro"
  
}

variable "instance_config" {
  type = map(any)  
}

variable "port" {
  type = number
}