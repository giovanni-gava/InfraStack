terraform {
  backend "s3" {
    bucket = "aws-mack-s3-tfstate-actions-pipeline"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}