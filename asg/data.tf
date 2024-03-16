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
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "dubita"
    workspaces = {
      name = "rds"
    }
  }
}