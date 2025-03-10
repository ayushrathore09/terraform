output "my_public_ip" {
  description = "value of public ip of ec2 instance"
  value = aws_instance.ec2_instance.public_ip
}

output "my_key_name" {
  description = "value of key name of ec2 instance"
  value = aws_key_pair.key_pair.key_name
}