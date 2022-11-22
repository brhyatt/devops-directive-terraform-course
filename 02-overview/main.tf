terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-017fecd1353bcc96e" # Ubuntu 22.04 LTS // us-west-2
  instance_type = "t2.micro"
}
