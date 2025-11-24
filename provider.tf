provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      owner    = "abordais@itsgroup.com"
      ephemere = "oui"
      entity   = "unimate"
    }
  }
}
