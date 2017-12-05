provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami = "ami-c979dca6"
  instance_type = "t2.micro"
}
