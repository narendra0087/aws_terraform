# AWS configuration
# AWS
variable "aws_access_key" {
    default = "Your access key"
}
variable "aws_secret_key" {
  default = "Aws access key"
}
variable "aws_region" {
  default = "Aws region"
}
variable "availablity_zone" {
  default = "us-east-1"
}

variable "vpc_cidr" {
    description = "CIDR for the vpc"
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  default = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
  description = "private subnet CIDR"
  default = "10.0.2.0/24"
}







