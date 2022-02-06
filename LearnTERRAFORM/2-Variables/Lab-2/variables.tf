variable access_key {}

variable secret_key {}

variable "region" {
  description = "aws region"
  default     = "us-west-1"
}

variable "ec2count" {
  default = "3"
}
variable "ami" {
  description = "ami for ec2 instance as per region"
  type        = map(string)
  default = {
    "us-east-1" = "ami-047a51fa27710816e"
    "us-west-1" = "ami-03ab7423a204da002"
  }
}

variable "instance_type" {
  description = "instance type of ec2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "key for ec2"
  default     = "DEVOPS"
}

variable "subnet_id" {
  description = "subnet for ec2"
  default     = "subnet-0f62e95d00c8a7328"
}

variable "sg_ids" {
  description = "security groups for ec2"
  type        = list(string)
  default     = ["sg-0ef9b4e25ef6aa6ef"]
}
