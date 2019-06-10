#ec2 Ubuntu machine

  data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
  }
  #-------------key pair-----------------
  resource "aws_key_pair" "terraform_ec2_key" {
  key_name = "terraform_ec2_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDd8TtHAqF7LJ/y9ZAhfQaqJC3fztpJDhdph9udEMPyZGlD1XK0qpxYyxgY17gAONAk10Ffgnfx7GQttB5UiTKl4jQqdX8WkCw+U2CSnTo8gfyDGQQcoZ5JXyUpTvzyPQgc+Fg+F+c+WDxghOjCoYOGlgB/71VswmUkUcNhaVmKlHwdwZpNWoTGN8RJ3cS0pvUP4+KTjXjsAFujwFAzdPxz8QJAIkD36i3g5X5e4XC/Ggcpr8TMyRF77pjd9K1mPTqD3z4zRw2t+P/I3MSpvr5Rw9zAj1HC7y8o2k0+AKo86D1VubWSX5uT5vmauxrgvPEig2IBctDPOkIfjwICe0Yn 100498@MP12AQMF"
  }