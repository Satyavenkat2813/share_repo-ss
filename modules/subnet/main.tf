resource "aws_subnet" "my_subnet" {
    vpc_id            = var.vpc_id
    cidr_block        = var.sn_cidr

    tags = var.sn_tag 
}



