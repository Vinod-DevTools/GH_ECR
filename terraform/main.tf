terraform {
  backend "s3" {
    bucket         = "ghecr0990"
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
  name        = "ghdemoecr"
  environment = "dev"
}
data "external" "images" {
  program = ["python3", "${path.module}/parse_images.py"]
}





