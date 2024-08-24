terraform {
  backend "s3" {
    bucket = "aws-mack-s3-tfstate-giovanni"
    key = "/terraform.tfstate"
    
  }
}