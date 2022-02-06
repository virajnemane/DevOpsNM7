resource "aws_instance" "test2" {
  ami           = "ami-0b9064170e32bde34"
  instance_type = "t2.micro"
  tags = {
        Name = "Web01"
        Environment =  terraform.workspace
}
}
