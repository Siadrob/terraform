resource "aws_instance" "ubuntu" {
  count         = var.instance_count
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name

  # Tags pour l'instance
  tags = {
    Name     = "ubuntu-${count.index + 1}"
    Env      = "cloudshell"
  }

  # Tags pour le disque EBS
  volume_tags = {
    owner    = "abordais@itsgroup.com"
    ephemere = "oui"
    entity   = "unimate"
  }
}
