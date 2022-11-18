provider "aws" {
  profile    = "terraform_user"
  access_key = "AKIA4OLNHDPVX"
  secret_key = ""
  region     = "us-west-1"

}

resource "aws_iam_user" "my_iam_user" {
count=2
name="my_iam_user_${count.index}"
}
