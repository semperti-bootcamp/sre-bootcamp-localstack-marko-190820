variable "localstack_server" {
  description = "LocalStack Server"
  type        = string
  default     = "localstack"
}
variable "s3_bucket" {
  description = "Name s3 bucket resource"
  type        = string
  default     = "BootCampEmpleados"
}
variable "s3_bucket_tag_name" {
  description = "S3 bucket Tag Name"
  type        = string
  default     = "BootCampEmpleados"
}
variable "s3_bucket_tag_env" {
  description = "Environment Tag"
  type        = string
  default     = "dev"
}