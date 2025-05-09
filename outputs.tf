## Outputs for EC2 instances using count meta-parameter:
# output "ec2_instance_public_ip" {
#   value = aws_instance.my_ec2[*].public_ip //using count meta-parameter
# }

# output "ec2_instance_public_dns" {
#   value = aws_instance.my_ec2[*].public_dns  //using count meta-parameter
# }


## Outputs for EC2 instances using for_each meta-parameter:
output "ec2_instance_public_ip_for_each" {
  value = [
       for i in aws_instance.my_ec2 : i.public_ip
      ]  
}