output "EC2_instance_public_IP" {
  description = "EC2 instance public IP"
  value = aws_instance.my_first_instance.public_ip
}