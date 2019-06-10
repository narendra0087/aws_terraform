# main file to launch the ec2 instance
resource "aws_instance" "ec2" {
    ami = "${data.aws_ami.ubuntu.id}"
     instance_type = "t2.micro"

    tags {
        name = "aws_instance"
     }
}



