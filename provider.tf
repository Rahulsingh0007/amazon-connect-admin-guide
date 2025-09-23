terraform {
  # Require Terraform v1.13.3 or higher
  required_version = ">= 1.13.3"

  # Use Terraform Cloud for state management
  cloud {
    organization = "AWS_connect_terraform"   # 👈 your Terraform Cloud org name

    workspaces {
      name ="amazon-connect-admin-guide"   # 👈 your workspace name
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"   # use a stable AWS provider version
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"   # 👈 change to your desired AWS region
}
