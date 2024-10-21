variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0866a3c8686eaeeba"  # Ubuntu 20.04 LTS
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "AWS Key Pair Name"
}

variable "private_key_path" {
  description = "Path to the private SSH key"
}
