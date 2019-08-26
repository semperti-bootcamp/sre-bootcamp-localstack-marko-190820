provider "aws" {
  version = "~> 2.7"
  region = "us-east-1"
  s3_force_path_style = true
  access_key = "semperti"
  secret_key = "semperti"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true
    endpoints {
        dynamodb = "http://${var.localstack_server}:4569" 
    }
}

resource "aws_dynamodb_table" "BootCampEmpleados" {
    name           = "${var.dynamodb_table_name}"
    billing_mode   = "PROVISIONED"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "Nombre"
    range_key       = "Cargo"

    attribute {
        name = "Nombre"
        type = "S"
    }

    attribute {
        name = "Cargo"
        type = "S"
    }


    tags = {
      Name        = "var.dynamodb_table_tag_name"
      Environment = "var.dynamodb_table_env_name"
    }
}
