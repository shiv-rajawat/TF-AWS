resource "aws_vpc" "main" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "${var.instance_tenancy}"

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_1_cidr_block}"
  availability_zone = "${var.subnet_1_availability_zone}"

  tags = {
    Name = "${var.subnet_1_name}"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_2_cidr_block}"
  availability_zone = "${var.subnet_2_availability_zone}"

  tags = {
    Name = "${var.subnet_1_name}"
  }
}

resource "aws_subnet" "subnet_3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_3_cidr_block}"
  availability_zone = "${var.subnet_3_availability_zone}"

  tags = {
    Name = "${var.subnet_1_name}"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0cd3dfa4e37921605"
  instance_type = "t2.micro"
    tags = {
      Name = "${var.ec2-1-name}"
    }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_8080"
  description = "Allow inbound traffic to 8080 from my ip."
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["111.93.0.74/32"]
  }
}
