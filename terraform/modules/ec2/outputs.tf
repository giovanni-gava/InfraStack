output "instance_id" {
    value = aws_instance.ec2_instance.id
  
}

output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
  
}

output "volume_id" {
    value = aws_instance.ec2_instance.root_block_device[0].volume_id
  
}

output "vpc_security_group_id" {
    value = aws_security_group.ec2-sg.id
  
}