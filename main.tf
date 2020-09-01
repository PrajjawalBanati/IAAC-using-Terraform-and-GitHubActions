terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
   organization = "ayu"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}