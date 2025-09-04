variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9"
}

variable "instance_type"{
    default = "t3.micro"
}

variable "ec2_tags" {
  default = {
    Name = "HelloWorld"
    Purpose = "variable_demo"
  }
}

variable "sg_name"{
    default = "allow_all_change"
}

variable "sg_desc" {
  default = "allow all traffic"
}

variable "from_port"{
    type = number
    default=0
}

variable "to_port"{
    type = number
    default=0
}

variable "protocol"{
    default="-1"
}

variable "cidr_blocks"{
    type = list (string)
    default=["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
    type = list(string)
    default = [ "::/0" ]
}

variable "sg_tags" {
  type=map(string)
  default = {
    Name = "allow-all"
  }
}

variable "ingress_ports" {
  default = [ #list(map)
        {
          from_port = 22
          to_port = 22
        },
        {
          from_port = 80
          to_port = 80
        },
        {
          from_port = 8080
          to_port = 8080
        }
    ]
  }
