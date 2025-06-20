output "public_ip" {
  value       = aws_instance.qa-ec2-env.public_ip
  description = "Public IP of the EC2 instance"
}

output "instance_id" {
  value       = aws_instance.qa-ec2-env.id
  description = "ID of the EC2 instance"
}