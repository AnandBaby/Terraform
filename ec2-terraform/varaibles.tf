variable "aws_access_key" {
    default = ""
}
variable "aws_secret_key" {
    default = ""
}
#If you have token for your IAM you can use this else comment this
variable "token" {
    default = ""
}

variable "aws_region" {
   description = "EC2 Region for the VPC"
   default = "us-east-1"
}

variable "instance_name" {
  description = "The name of the instance"
  default = "Terraform_abv"
}

variable "instance_type" {
    description = " The Type of the instance that is going to launch"
    default = "t2.nano"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-id"
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  default     = "true"
}

variable "ami_id" {
  description = "The AMI to use"
  default = "ami-0a313d6098716f372"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 1
}   
variable "ssh_key_pair" {
  description = "SSH key pair to be provisioned on the instance"
  default = "name-the-keypair" 
}


