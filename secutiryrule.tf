#Security List
resource "aws_security_group" "sgweb" {
  name = "vcp_test_web"
  description = "Allow incoming HTTP connection and SSH access"

ingress
{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blockes = ["0.0.0.0/0"]

}
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
ingress {
    from_port = -1
    to_port = -1 
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
}

vpc_id = "${aws_vpc.vpc1.id}"
tags {
    name = "webserver SG"
}
}


