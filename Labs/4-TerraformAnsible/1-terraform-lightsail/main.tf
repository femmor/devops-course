terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 0.13.4"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance
resource "aws_lightsail_instance" "dev_server" {
  name              = "my-dev-server"
  availability_zone = "us-west-2a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "small_2_0"
  tags = {
    environment = "development"
  }
}