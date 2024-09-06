variable "bucket_name" {
  type    = string
  default = "20240906-iac-with-netbox"
}
variable "dynamoDB_name" {
  type    = string
  default = "terraform-state-lock"
}