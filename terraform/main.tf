resource "aws_s3_bucket" "terraform-bucket-posmack" {
  bucket = var.bucket_name
}


resource "aws_s3_object" "index_html" {
  key    = "index.html"
  bucket = aws_s3_bucket.terraform-bucket-posmack.id
  source = "./files/index.html"
}


resource "aws_s3_tfstate" "backend-tf" {
  bucket = var.aws_s3_tfstate
}
