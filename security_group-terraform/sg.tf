provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_security_group" "sgweb" {
  name = "vpc_test_web"
  description = "Allow incoming HTTP connections & SSH access"
  tags = { Name = "Name-sg"}

ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["182.29.43.56/32"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      ipv6_cidr_blocks = ["::/0"]
    }
}
