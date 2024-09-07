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
* netbox cidr data
```
  + test-value = [
      + {
          + description = "TEST-VPC1"
          + id          = 1
          + prefix      = "10.1.0.0/16"
          + site_id     = 4
          + status      = "reserved"
          + tags        = []
          + vlan_id     = 0
          + vlan_vid    = 0
          + vrf_id      = 0
        },
    ]
```