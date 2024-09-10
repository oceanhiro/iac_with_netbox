# edit bucket name

```
(ansible) [vagrant@client-1 dev]$ cat main.tf
terraform {

  ~~snip~~

  backend "s3" {
    bucket          = "{{__edit-here__}}"
    dynamodb_table  = "terraform-state-lock"
    key             = "dev/terraform.tfstate"
    region          = "ap-northeast-1"
    profile         = "default"
  }

  ~~snip~~

}
```

# set up terraform

```
terraform init
terraform plan
terraform apply
```

# export tf env

```
export TF_VAR_netbox_api_token="{{__YOUR_API_TOKEN__}}"
export TF_VAR_netbox_server_url="{{__YOUR_NETBOX_URL__}}"
```

# sample
* netbox netbox_prefixes data
```
  prefixes_all_attributes = {
      filter   = null
      id       = "terraform-20240909133713960200000001"
      limit    = 0
      prefixes = [
          {
              description = "TEST-VPC1"
              id          = 1
              prefix      = "10.1.0.0/16"
              site_id     = 4
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC1-SUB1"
              id          = 2
              prefix      = "10.1.1.0/24"
              site_id     = 1
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC1-SUB2"
              id          = 3
              prefix      = "10.1.2.0/24"
              site_id     = 2
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC1-SUB3"
              id          = 4
              prefix      = "10.1.3.0/24"
              site_id     = 3
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC2"
              id          = 5
              prefix      = "10.2.0.0/16"
              site_id     = 4
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC2-SUB1"
              id          = 6
              prefix      = "10.2.1.0/24"
              site_id     = 1
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC2-SUB2"
              id          = 7
              prefix      = "10.2.2.0/24"
              site_id     = 2
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
          {
              description = "TEST-VPC2-SUB3"
              id          = 8
              prefix      = "10.2.3.0/24"
              site_id     = 3
              status      = "reserved"
              tags        = []
              vlan_id     = 0
              vlan_vid    = 0
              vrf_id      = 0
            },
        ]
    }

```

* netbox site data
```
  site_all_attributes = {
      asn_ids     = []
      comments    = ""
      description = ""
      facility    = ""
      group_id    = null
      id          = "1"
      name        = "ap-northeast-1a"
      region_id   = null
      site_id     = 1
      slug        = "ap-northeast-1a"
      status      = "active"
      tenant_id   = null
      time_zone   = ""
    }
```

* netbox netbox_virtual_machines data
```
  base_vm_all_attributes = {
      filter     = [
          {
              name  = "cluster_id"
              value = "1"
            },
        ]
      id         = "terraform-20240910151432187100000002"
      limit      = null
      name_regex = "test-vpc1-sub1-vm1"
      vms        = [
          {
              cluster_id         = 1
              comments           = "test aws vm comments"
              config_context     = jsonencode(
                    {
                      instance_type = "t2.micro"
                    }
                )
              custom_fields      = {}
              description        = "test aws vm"
              device_id          = 0
              device_name        = ""
              disk_size_gb       = 8
              local_context_data = jsonencode(
                    {
                      instance_type = "t2.micro"
                    }
                )
              memory_mb          = 8
              name               = "test-vpc1-sub1-vm1"
              platform_id        = 1
              platform_slug      = "amazon-linux-2-ami-2-0-20230404-1-x86_64-hvm-gp2"
              primary_ip         = "10.1.1.1/24"
              primary_ip4        = "10.1.1.1/24"
              primary_ip6        = ""
              role_id            = 0
              site_id            = 1
              status             = "active"
              tag_ids            = []
              tenant_id          = 1
              vcpus              = 4
              vm_id              = 1
            },
        ]
    }
```