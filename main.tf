provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "nginx_server" {
  ami           = "ami-0fa8ef51885f1834b"  # Ubuntu 22.04 in us-east-1
  instance_type = "t3.micro"
  key_name      = "terraform-key-v2"         # Replace with your key pair name

  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]

  user_data = file("install-nginx.sh")

  tags = {
    Name = "nginx-server"
  }
}

resource "aws_security_group" "allow_http_ssh" {
  name        = "allow_http_ssh"
  description = "Allow HTTP and SSH"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
