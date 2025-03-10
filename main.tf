# creating aws s3 bucket
# resource "aws_s3_bucket" "test_bucket" {
#   bucket = "bucket094589"
#   tags = {
#     Name = "test_bucket"
#   }
# }


# creating ec2 instance, key pair, security group, and elastic ip.
resource "aws_key_pair" "key_pair" {
  key_name = "tf_key_pair"
  public_key = file("C:/Users/user/OneDrive/Desktop/terraform_2025/tf_key.pub")
  
}

resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "tf_SG" {
  name = "allow ports"
  vpc_id = aws_default_vpc.default.id   # interpolation: to access the resources internally using their resource type and reference name.
  
  # incoming traffic
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #outgoing traffic
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.key_pair.key_name
  security_groups = [aws_security_group.tf_SG.name]
  tags = {
    Name = "ec2_instance"
  }
  
}