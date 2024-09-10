###
### prefixes
###
data "netbox_prefixes" "prefixes" {}

# (debug)
#output "prefixes_all_attributes" {
#  value = data.netbox_prefixes.prefixes
#}

# (debug)
#output "prefixes_keys" {
#  value = keys(data.netbox_prefixes.prefixes)
#}


###
### site
###
data "netbox_site" "site" { id = local.sub_az_id }
#output "az" {
#  value = tomap({ for prefix in data.netbox_prefixes.prefixes.prefixes : prefix.description => prefix.site_id})[local.sub_name]
#}

# (debug)
#output "site_all_attributes" {
#  value = data.netbox_site.site
#}

# (debug)
#output "site_keys" {
#  value = keys(data.netbox_site.site)
#}

# (debug)
#output "site_name" {
#  value = data.netbox_site.site.name
#}

###
### netbox_virtual_machines
###
data "netbox_cluster" "vmw_cluster_01" {
  name = "AWS"
}

data "netbox_virtual_machines" "base_vm" {
  name_regex = local.vm_name
  filter {
    name  = "cluster_id"
    value = data.netbox_cluster.vmw_cluster_01.id
  }
}

# (debug)
output "base_vm_all_attributes" {
  value = data.netbox_virtual_machines.base_vm
}