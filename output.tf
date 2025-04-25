output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.nginx_server.public_ip
}
