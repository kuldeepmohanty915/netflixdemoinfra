provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 6
ami = "ami-080b1a55a0ad28c02"
instance_type = "t2.medium"
key_name = "kuldeep5"
vpc_security_group_ids = ["sg-076b5fd367827df1f"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ANSIBLE" , "DEV-1", "DEV-2", "TEST-1", "TEST-2", "MONITORING SERVER"]
}
