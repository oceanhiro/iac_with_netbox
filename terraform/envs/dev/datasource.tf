data "netbox_prefixes" "prefixes" {}
data "netbox_site" "site" { id = local.sub_az_id }

# (debug)
#output "prefixes_all_attributes" {
#  value = data.netbox_prefixes.prefixes
#}

# (debug)
#output "prefixes_keys" {
#  value = keys(data.netbox_prefixes.prefixes)
#}

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
