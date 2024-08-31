terraform {
  backend "s3" {
    bucket = "aws-mack-s3-tfstate-giovanni-2024"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}