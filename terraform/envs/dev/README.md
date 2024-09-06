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