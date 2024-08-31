module "bucket" {
    source = "./modules/bucket"
    bucket_name = "aws-s3-mack-teste-1"
    region = "us-east-1"
}

resource "aws_s3_object" "index_html" {
    key = "index_html"
    bucket = module.bucket.s3-bucket-id
    source = "./files/index.html"
}


module "ec2" {
    source = "./modules/ec2"
    region = "us-east-1"
    vpc_id = "vpc-0162a2811ed1ab339"
    instance_name = "aws-ec2-mack-giovanni"
    instance_type = "t3.micro"
    volume_name = "disco-1"
    volume_size = 20
    sg_name = "meu-sg"
    key_name = "terraform.pem"
    allowed_https_cidr_blocks = [ "0.0.0.0/0" ]
    allowed_ssh_cidr_blocks = [ "0.0.0.0/0" ]
}