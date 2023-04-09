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
  region  = "us-west-2"
  profile = var.pipeline ? "" : "dev-profile"
}

module "compute" {
  source = "../modules/compute-module"

  # Input Variables
  app_name = "web-app-1"
  count    = 1
  code     = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}