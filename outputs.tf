output "ec2_instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "ec2_instance_public_dns" {
  value = aws_instance.my_ec2.public_dns
}