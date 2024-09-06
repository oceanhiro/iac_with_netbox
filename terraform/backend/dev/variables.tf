variable "bucket_name" {
  type    = string
  default = "{{__edit-here__}}"
}
variable "dynamoDB_name" {
  type    = string
  default = "terraform-state-lock"
}