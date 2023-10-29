resource "aws_network_interface" "my_NIC" {
    subnet_id   = var.sn_id
 
    tags = var.nic_tag
  
}

