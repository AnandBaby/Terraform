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

