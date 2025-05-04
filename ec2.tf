#key pair
resource "aws_key_pair" "my_key" {
  key_name   = "terraform-key"
  public_key = file("terra_key.pub")
}

# vpc
resource "aws_default_vpc" "my_vpc" {

}

# security group
resource "aws_security_group" "my_sg" {
  name        = "terraform_sg"
  description = "Allow user to connect"
  vpc_id      = aws_default_vpc.my_vpc.id

  ingress {
    description = "port 22 allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = " allow all outgoing traffic "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port 80 allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#ec2 instance
resource "aws_instance" "my_ec2" {
  ami             = var.ec2_ami           # Replace with your desired AMI ID
  instance_type   = var.ec2_instance_type # Replace with your desired instance type
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_sg.name]
  user_data       = file("install_nginx.sh")
  tags = {
    Name = "terraform-ec2-instance"
  }
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
}