terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region              = "us-west-2"
  shared_config_files = ["~/.aws/config"]
  profile             = "dev-profile"
}

module "compute" {
  source = "./compute-module"

  # Input Variables
  app_name = "web-app-1"
  #   environment_name = "production"
  #   instance_type    = "t2.micro"
  #   create_dns_zone  = true
  #   db_name          = "webapp1db"
  #   db_user          = "foo"
  #   db_pass          = var.db_pass_1
}