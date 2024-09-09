
locals {
  vpc_name = "TEST-VPC1"
  sub_name = "TEST-VPC1-SUB1"

  vpc_cidr = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.prefix})[local.vpc_name]
  sub_cidr = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.prefix})[local.sub_name]
}

module "vpc" {

    source = "../../modules/vpc"

    vpc_name = local.vpc_name
    vpc_cidr = local.vpc_cidr

    sub_name = local.sub_name
    sub_cidr = local.sub_cidr
    sub_az   = "ap-northeast-1a"

}