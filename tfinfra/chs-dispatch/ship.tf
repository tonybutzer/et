provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "master" {

  ami           = "${var.ami}"

  instance_type = "${var.ship_instance_type}"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${var.subnet_id}"
  tags = {
    Name = "butzer-dispatch"
    Owner = "butzer@contractor.usgs.gov"
    Project = "LPIP"
  }
  iam_instance_profile                    ="${var.iam_role}"

  security_groups = ["${var.security_group_ssh}", "${var.security_group_ping}", "${var.security_group_web}"]
  root_block_device {volume_size = 240}

  user_data                   = "${file("files/os_boot.sh")}"

}

