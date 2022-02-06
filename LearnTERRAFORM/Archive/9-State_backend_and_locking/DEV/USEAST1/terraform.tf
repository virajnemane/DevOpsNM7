terraform {
  backend "s3" {
    bucket = "all-terraform-backend"
    key    = "DEV-USEAST1.tfstate"
    region = "us-west-1"
    dynamodb_table = "terraform_state"
  }
}
