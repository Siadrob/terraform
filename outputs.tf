output "ec2_public_ips" {
  description = "Adresses IP publiques des EC2"
  value       = [for instance in aws_instance.ubuntu : instance.public_ip]
}

output "ec2_private_ips" {
  description = "Adresses IP privées des EC2"
  value       = [for instance in aws_instance.ubuntu : instance.private_ip]
}
