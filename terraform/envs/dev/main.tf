
locals {
  vpc_name = "TEST-VPC1"
  sub_name = "TEST-VPC1-SUB1"
}

module "vpc" {

    source = "../../modules/vpc"

    vpc_name = local.vpc_name
    vpc_cidr = "10.1.0.0/16"
    #vpc_cidr = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == local.vpc_name ]

    sub_name = local.sub_name
    sub_cidr = "10.1.1.0/24"
    sub_az   = "ap-northeast-1a"
    #sub_name = local.sub_name
    #sub_cidr = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == local.sub_name ]
    #sub_az   = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == local.sub_name ]

}