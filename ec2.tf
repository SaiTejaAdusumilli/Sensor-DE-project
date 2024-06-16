resource "aws_instance" "web" {
  ami           = "ami-0ca2e925753ca2fb4"
  instance_type = "t2.micro"

  tags = {
    Name = "SensorEC2"
  }
  key_name = "tempkeypair"
  # user_data = file("script.sh")
}