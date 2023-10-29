module "vpc_m" {
    source   = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    vpc_tag  = var.vpc_tag
  
}

module "sn_m" {
    source  ="./modules/subnet"
    vpc_id  = module.vpc_m.vpc_id
    sn_cidr = var.sn_cidr
    sn_tag  = var.sn_tag
  
}

module "sg_m" {
    source ="./modules/sg"
    vpc_id = module.vpc_m.vpc_id
    sg_tag = var.sg_tag
  
}

module "nic_m" {
    source   ="./modules/nic"
    for_each = var.instance_config
    sn_id    = module.sn_m.subnet_id
    nic_tag  = each.value. nic_tag
}

module "ec2_m" {
    source ="./modules/ec2"
    depends_on = [module.nic_m]
    for_each      = var.instance_config
    instance_ami  = each.value.instance_ami 
    instance_type = each.value.instance_type
    nic_id        = module.nic_m[each.key].nic_id
    instance_name = each.value. instance_name
}

resource "null_resource" "name" {

    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("")
      host = module.vpc_m.public_ip
      }


    provisioner "file" {
        source = "installation_file.sh"
        destination = "/temp/installation_file.sh"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo chmod +x /temp/installation_file.sh",
            "sh /temp/installation_file.sh"
        ]
    }
    depends_on = [ aws_instance.web]
}
