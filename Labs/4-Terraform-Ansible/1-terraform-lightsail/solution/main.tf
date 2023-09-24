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
  name              = "my-dev-server-${count.index + 1}"
  availability_zone = var.availability_zone
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "small_2_0"
  count             = var.instance_count
  tags = {
    environment = "development"
  }
  user_data = <<-EOF
#!/bin/bash
apt update
apt install python3-pip -y
runuser -l ubuntu -c 'python3 -m pip install --user ansible'
EOF
}