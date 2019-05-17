provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    token = "${var.token}"  #If you have token for your IAM you can use this else comment this
    region = "${var.aws_region}"
}
resource "aws_ecr_repository" "Test" {
    name = "test"
}
