# Pulls VPC related information
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "dubita"
    workspaces = {
      name = "vpc"
    }
  }
}


# DB related information
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "dubita"
    workspaces = {
      name = "rds"
    }
  }
}

# Pulls AMI information
data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

