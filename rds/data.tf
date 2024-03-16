data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "dubita"
    workspaces = {
      name = "vpc"
    }
  }
}
