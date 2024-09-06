data "netbox_prefixes" "prefixes" {}

#output "prefixes_all_attributes" {
#  value = data.netbox_prefixes.prefixes
#}
#
#output "prefixes" {
#  value = keys(data.netbox_prefixes.prefixes)
#}

output "prefixes_all_attributes-0" {
  value = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == "TEST-VPC1" ]
}

locals {
  test-value = [ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix if prefix.description == "TEST-VPC1" ]
}

output "test-value-result" {
    value = [ for p in local.test-value : {
        prefix = p.prefix
        status = p.status
    } ]
}