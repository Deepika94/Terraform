

resource "aws_instance" "demoserver"{
 instance_type = "t2.micro"
 #vpc = aws_default_vpc.vpc_demo.id
 ami = "ami-053b0d53c279acc90"

}

resource "aws_security_group" "sg1" {

ingress{
description = "SSH from internet"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress{
description = "HTTP from internet"
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

}