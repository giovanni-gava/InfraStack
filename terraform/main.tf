module "bucket" {
    source = "./modules/bucket"
    bucket_prefix = "teste"
    region = "us-east-1"
}