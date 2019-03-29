resource "aws_instance" "training" {
  ami           = "${var.app["ami"]}"
  instance_type = "t2.nano"

  tags = {
    Name = "Training Terraform"
    Env = "Trainig"
  }
}