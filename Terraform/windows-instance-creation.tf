provider "aws" {
  profile    = "terraform_user"
  access_key  = "AKIA4OLNH"
  secret_key = ""
  region     = "us-east-1"

}

resource "aws_instance" "devops" {
  ami           = "ami-064d05b4fe8515623"
  instance_type = "t2.micro"
  key_name      = "terraform-windows"
  tags          = {
  Name="Windows-Computer"
  }
  security_groups = ["${aws_security_group.allow_rdp.name}"]
}

resource "aws_security_group" "allow_rdp" {
  name        = "allow_rdp"
  description = "allow rdp traffic"

ingress {
  from_port = 3389
  to_port   = 3389

protocol   = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}
