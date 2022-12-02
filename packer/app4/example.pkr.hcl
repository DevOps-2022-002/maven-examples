
source "amazon-ebs" "image_ubuntu" {
  access_key    = "AKIA4OLNHDPVQMZ4JKGJ"
  ami_name      = "my-ubuntu-image-3"
  instance_type = "t2.micro"
  region        = "us-west-2"
  secret_key    = "zSpolBVU9AVcmCXlXSsbLiPu0mjEf+XOQ1axB5YK"
  source_ami    = "ami-0c09c7eb16d3e8e70"
  ssh_username  = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.image_ubuntu"]

  provisioner "shell" {
    script = "setup.sh"
  }
  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/"
  }
  provisioner "shell" {
    inline = ["sudo cp /tmp/index.html /var/www/html/"]
  }
}
