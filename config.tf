##########################
# Stack general settings #
##########################
variable "app" {
  default = {
    # Prefix to all resources with the project or website name
    name = "TerraformTraining"
    ami = "ami-0a313d6098716f372"
  }
}

provider "aws" {
  region     = "us-east-1"
}