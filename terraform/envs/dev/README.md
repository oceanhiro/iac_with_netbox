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
