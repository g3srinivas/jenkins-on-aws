terraform {
  backend "s3" {
    bucket = "terraform-backend-sv1"
    key    = "jenkins"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.region
}