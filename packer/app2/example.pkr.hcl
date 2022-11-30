
source "amazon-ebs" "testing_image_creation" {
  access_key    = "AKIA4OLNHDPVQ4SZB76P"
  ami_name      = "my-ubuntu-image"
  instance_type = "t2.micro"
  region        = "us-west-2"
  secret_key    = "k6i7R38Sirub2Lbz2mwVBmmlXKXlCOhtf/HdM6Td"
  source_ami    = "ami-017fecd1353bcc96e"
  ssh_username  = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.testing_image_creation"]

  provisioner "shell" {
    inline = ["sleep 30", "sudo apt-get update -y", "sudo apt-get install nginx -y"]
  }

}
