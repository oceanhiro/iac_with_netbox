
locals {
  ### VPC
  vpc_name = "TEST-VPC1"
  vpc_cidr = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.prefix })[local.vpc_name]

  ### subnet
  sub_name    = "TEST-VPC1-SUB1"
  sub_cidr    = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.prefix })[local.sub_name]
  sub_az_id   = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.site_id })[local.sub_name]
  sub_az_name = data.netbox_site.site.name
  sub_id      = module.vpc.TEST-VPC1-SUB1

  ### VM
  vm_name     = "test-vpc1-sub1-vm1"
}

module "vpc" {

  source = "../../modules/vpc"

  vpc_name = local.vpc_name
  vpc_cidr = local.vpc_cidr

  sub_name = local.sub_name
  sub_cidr = local.sub_cidr
  sub_az   = local.sub_az_name

}

module "ec2" {

  source = "../../modules/ec2"

  vm_name = local.vm_name
  sub_id  = local.sub_id

}