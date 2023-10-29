vpc_cidr = "10.0.0.0/16"

vpc_tag = {
    "Name" = "vpc-2"
}

sn_cidr = "10.0.0.0/24"

sn_tag = {
    "Name" = "dev-sn"
}

sg_tag = {
     "Name" = "dev-sg"
}





instance_config = {
    instance_1 = {
        nic_tag       = {"Name" = "Primary_network_interface"}
        pvt_ips       = [ "10.0.0.220" ]
        instance_name = {"Name" = "dev-ec2"}
        instance_ami  = "ami-099b3d23e336c2e83"
        instance_type = "t2.micro"
    }

    instance_2 = {
        nic_tag       = {"Name" = "Primary_network_interface-1"}
        pvt_ips       = [ "10.0.0.221" ]
        instance_name = {"Name" = "dev-ec2-1"}
        instance_ami  = "ami-099b3d23e336c2e83"
        instance_type = "t2.micro"

    }

}