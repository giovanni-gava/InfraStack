output "aws_s3_bucket_mack" {
    value = aws_s3_bucket.terraform-bucket-posmack.arn
}

output "aws_s3_bucket_tfstate" {
    value = aws_s3_bucket.backend-tf
  
}