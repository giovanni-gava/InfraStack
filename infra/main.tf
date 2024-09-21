module "bucket" {
    source = "./modules/bucket"
    bucket_name = "aws-mack-s3-actions-tf-giovanni"
    region = "us-east-1"
}

