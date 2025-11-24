variable "aws_region" {
  description = "AWS region de déploiement"
  type        = string
  default     = "eu-west-1"
}

variable "instance_count" {
  description = "Nombre d'instances EC2"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "ssh_key_name" {
  description = "Nom de la clé SSH importée dans AWS"
  type        = string
}
