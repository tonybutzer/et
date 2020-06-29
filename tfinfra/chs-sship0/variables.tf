variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "master_instance_type" {
  description = "The instance type."
  default = "t3a.large"
}

variable "ship_instance_type" {
  description = "ships - The instance type."
  # default = "c5.9xlarge"
  default = "t3a.2xlarge"
}


variable "subnet_id" {
  description = "The AWS network id representing the allowed vpc"
  # internal-Subnet-B
  default = "subnet-0dd447dd1e3e8f355"
}

variable "ship_userdata" {
  description = "user data os startup scripts"
  default = ["ship0.sh", "ship1.sh"]
}

variable "ship_name" {
  description = "ship names - DUH!"
  default = ["butzer-sship-0", "butzer-sship-1"]
}
variable "test_name" {
  description = "The test number"
  default = "a1"
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default = "CHS-LSDSDPAS-butzer"
}

variable "ami" {
  description = "AMI"
  default = "ami-06d51e91cea0dac8d"
}


variable "security_group_ssh" {
  description = "The AWS security group id"
  # default = "SG-LSDS-SSH-Server"
  default = "sg-0d10c698f4475d184"
}

variable "security_group_ping" {
  description = "The AWS security group id"
  default = "sg-0ef8fe4c5f83581d5"
}

variable "security_group_web" {
  description = "The AWS security group id"
  default = "sg-0d531522a626e83e4"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "lsds-developer-ec2"
}

