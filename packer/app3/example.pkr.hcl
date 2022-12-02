
source "amazon-ebs" "image_ubuntu" {
  access_key    = "AKIA4OLJ"
  ami_name      = "my-ubuntu-image-2"
  instance_type = "t2.micro"
  region        = "us-west-2"
  secret_key    = "zSpolBVU9AVcmCXlXSsYK"
  source_ami    = "ami-0c09c7eb16d3e8e70"
  ssh_username  = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.image_ubuntu"]

  provisioner "shell" {
    script = "setup.sh"
  }

}
