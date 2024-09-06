variable "bucket_name" {
  type    = string
  default = "globally-unique-bucket-name"
}
variable "dynamoDB_name" {
  type    = string
  default = "terraform_state_lock"
}