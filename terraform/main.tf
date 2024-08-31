module "bucket" {
    source = "github.com/giovanni-gava/iac-mack/tree/main/terraform/modules/bucket"
    bucket_name = "aws-s3-mack-teste-1"
    region = "us-east-1"
}

resource "aws_s3_object" "index_html" {
    key = "index_html"
    bucket = module.bucket.s3-bucket-id
    source = "./files/index.html"
}