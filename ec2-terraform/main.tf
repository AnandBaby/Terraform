provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    token = "${var.token}" #If you have token for you IAM you can use this
    region = "${var.aws_region}"
}
resource "aws_instance" "Terraform_abv" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    associate_public_ip_address = "${var.associate_public_ip_address}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ssh_key_pair}"
    tags = {Name = "Terraform_name"}
    }

    
