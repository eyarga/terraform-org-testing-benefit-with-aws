terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "org-Benefits-of-Infrastructure-as-Code"
    workspaces {
      name = "terraform-workspace"
    }
  }
  required_version = "> 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.0"
    }
  }
}