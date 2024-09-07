
locals {
  vpc_name = "TEST-VPC1"
  netbox_prefix_data = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == local.vpc_name ]
}

module "vpc" {

    source = "../../modules/vpc"

    vpc_name = local.vpc_name
    vpc_cidr = local.netbox_prefix_data[0].prefix

}