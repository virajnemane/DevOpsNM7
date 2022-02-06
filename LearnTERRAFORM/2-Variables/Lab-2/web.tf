resource "aws_instance" "web" {
  count                  = var.ec2count
  ami                    = var.ami[var.region]
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.sg_ids
  tags = {
    Name = "Webserver-${count.index + 1}"
    Env = "DEV"
    Project-Name = "DEVOPS"
    ManagedBy = "Terraform"
  }
}