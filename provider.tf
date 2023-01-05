terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "1.10.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

provider "genesyscloud" {}