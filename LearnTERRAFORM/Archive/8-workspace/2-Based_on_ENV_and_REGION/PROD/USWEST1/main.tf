resource "aws_instance" "test1" {
  ami           = "ami-011996ff98de391d1"
  instance_type = "t2.micro"
  tags = {
        Name = "Web01"
        Environment =  terraform.workspace
}
}
