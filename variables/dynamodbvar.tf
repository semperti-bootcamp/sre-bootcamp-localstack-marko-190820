variable "localstack_server" {
  description = "LocalStack Server"
  type        = string
  default     = "localstack"
}
variable "dynamodb_table_name" {
  description = "DynamoDB Table Name"
  type        = string
  default     = "BootCampEmpleados"
}
variable "dynamodb_table_tag_name" {
  description = "Tag Name"
  type        = string
  default     = "BootCampEmpleados"
}
variable "dynamodb_table_env_name" {
  description = "Environment Tag"
  type        = string
  default     = "dev"
}