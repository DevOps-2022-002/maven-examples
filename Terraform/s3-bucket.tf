provider "aws" {
  profile    = "terraform_user"
  access_key = ""
  secret_key = ""
  region     = "us-west-1"

}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-s3-bucket-anjan"
  acl    = "private"

  tags = {
    name        = "my-bucket"
    environment = "test"
  }
}
