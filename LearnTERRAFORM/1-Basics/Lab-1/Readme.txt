1. Login with admin user

2. create directory "terraform"
mkdir terraform

3. go to inside terraform directory, you should be at /home/admin/terraform
cd terraform

4. create instance.tf
    Be sure you have mentioned your access key and secret key in instance.tf
    Be sure you have updated AMI as per region inside instance.tf

5. initialize terraform
terraform

6. check syntax
terraform validate

7. make sure code format is fine
terraform fmt

8. check plan
terraform plan

9. if plan seems to be fine, go ahead and apply it.
terraform plan

10. Open aws console, go to region which you have mentioned in instance.tf and check instances in EC2 service.