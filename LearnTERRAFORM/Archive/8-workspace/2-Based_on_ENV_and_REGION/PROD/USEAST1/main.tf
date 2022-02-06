resource "aws_instance" "test1" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  tags = {
        Name = "Web01"
        Environment =  terraform.workspace
}
}
