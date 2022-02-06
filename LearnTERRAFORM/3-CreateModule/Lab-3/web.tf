module "ec2" {
  source = "./modules/ec2"

  #ec2_ami = ""
  #ec2_instance_type = ""
  key_name  = "DEVOPS"
  subnet_id = "subnet-0f62e95d00c8a7328"
  sg_ids    = ["sg-0ef9b4e25ef6aa6ef"]
  ec2_name  = "Webserver"
}
