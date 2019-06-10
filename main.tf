# main file to launch the ec2 instance

resource "aws_instance" "ec2" {
 #   ami = "${data.aws_ami.ubuntu.id}"
 #or provide directory ami "ami-00d4e9ff62bc40e03"
 #This is by default for testing RHEL8
     ami = "ami-098bb5d92c8886ca1"
     instance_type = "t2.micro"
     
    key_name = "${aws_key_pair.terraform_ec2_key.id}"      
    subnet_id =  "${aws_subnet.pub_sub.id}"
    vpc_security_group_ids = "${aws_security_group.sgweb.id}"
    associate_public_ip_address = true
    source_dest_check = false
    user_data = "${file("install.sh")}" 
    tags {
        name = "aws_instance"
     }
}