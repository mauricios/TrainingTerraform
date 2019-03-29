# Create VPC

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "Training"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Terraform"
  }
}

resource "aws_instance" "training" {
  ami           = "${var.app["ami"]}"
  instance_type = "t2.nano"
    subnet_id = "${aws_subnet.main.id}"

  tags = {
    Name = "Training Terraform"
    Env = "Trainig"
  }
}