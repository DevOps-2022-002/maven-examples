provider "aws" {
  profile    = "terraform_user"
  access_key = "AKIA4OLNHD"
  secret_key = "uYx98C+xoFZgBzcl/OHL6g"
  region     = "us-west-1"

}

resource "aws_instance" "web" {
  ami           = "ami-029465c1f346dd34f"
  instance_type = "t2.micro"
  key_name      = "terraform-linux"
  tags          = {
  Name = "linux-Computer"
  }
  security_groups = ["${aws_security_group.allow_ssh.name}"]
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow_ssh_traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
