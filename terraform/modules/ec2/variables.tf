variable "region" {
    type = string
    default = "us-east-1" 
}

variable "vpc_id" {
    type = string
    default = "vpc-0162a2811ed1ab339"
}

variable "instance_name" {
    type = string
    default = "aws-ec2-mack-giovanni"  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "volume_name" {
    type = string
    default = "volume-1"
  
}

variable "volume_size" {
    type = number
    default = 10
  
}

variable "sg_name" {
    type = string
    default = "aws-ec2-sg-mack"
  
}

variable "allowed_ssh_cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}

variable "allowed_https_cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

variable "key_name" {
    type = string
    default = "terraform.pem"
  
}