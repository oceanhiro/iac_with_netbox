# edit bucket name

```
(ansible) [vagrant@client-1 dev]$ cat variables.tf
variable "bucket_name" {
  type    = string
  default = "{{__edit-here__}}"
}
~~snip~~
```

# set up terraform

```
terraform init
terraform plan
terraform apply
```