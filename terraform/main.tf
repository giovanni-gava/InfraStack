resource "aws_s3_bucket" "terraform-bucket-posmack" {
  bucket_prefix = var.bucket_prefix
  bucket = var.bucket_name
}


resource "aws_s3_object" "index_html" {
  key    = "index.html"
  bucket = aws_s3_bucket.terraform-bucket-posmack.id
  source = "./files/index.html"
}
