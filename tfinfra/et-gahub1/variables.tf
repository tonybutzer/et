variable "region" {
  description = "The AWS region."
  default = "us-west-2"
}

variable "test_name" {
  description = "The test number"
  default = "a1"
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default = "bucketlauncher2-keypair"
}
variable "ami" {
  description = "AMI"
  default = "ami-06f2f779464715dc5"
}

variable "master_instance_type" {
  description = "The instance type."
  default = "t2.micro"
}

variable "instance_type" {
  description = "The instance type."
  default = "m5a.large"
  #default = "t3a.nano"
}


variable "security_group" {
  description = "The AWS security group id"
  default = "et-web-sg"
}

variable "iam_role" {
  description = "The AWS iam role"
  default = "tonyEC2"
}

