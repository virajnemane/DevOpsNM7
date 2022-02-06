Create bucket "all-terraform-backend" in us-west-1 region

Create dynamo db table 
    Give table name "terraform_state"
    give primary key "LockID"

do terraform init

State file will get created only after terraform apply.