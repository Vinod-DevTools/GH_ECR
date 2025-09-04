terraform {
  backend "s3" {
    bucket         = "aws908999"
    key            = "ecr-sync-project/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true 
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ecr_demo" {
  source      = "./modules/ecr"
  name        = "non-prod-NETS"
  environment = "dev"
}






