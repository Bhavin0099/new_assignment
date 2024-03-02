terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  } 
  
  backend "s3" {
    bucket         	   = "terraform-tfstat-bucket2439"
    key              	   = "state/terraform.tfstate"
    region         	   = "ap-southeast-1"
    dynamodb_table = "terraform_lock"
  }
}
