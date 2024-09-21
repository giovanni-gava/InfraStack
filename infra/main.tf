module "bucket" {
    source = "./modules/bucket"
    bucket_name = var.bucket_name
    region = "us-east-1"
}

