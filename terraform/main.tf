module "bucket" {
    source = "./modules/bucket"
    bucket_name = "aws-s3-mack-teste-1"
    region = "us-east-1"
}