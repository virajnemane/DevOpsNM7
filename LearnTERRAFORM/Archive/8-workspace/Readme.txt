Terraform starts with a single workspace named "default". 
This workspace is special both because it is the default and also because it cannot ever be deleted. 
If you've never explicitly used workspaces, then you've only ever worked on the "default" workspace.

Named workspaces allow conveniently switching between multiple instances of a single configuration within 
its single backend. They are convenient in a number of situations, but cannot solve all problems.

A common use for multiple workspaces is to create a parallel, distinct copy of a set of infrastructure 
in order to test a set of changes before modifying the main production infrastructure. 
For example, a developer working on a complex set of infrastructure changes might create 
a new temporary workspace in order to freely experiment with changes without affecting the default workspace.

Multiple workspaces are currently supported by the following backends:
1. AzureRM
2. Consul
3. COS
4. GCS
5. Kubernetes
6. Local
7. Manta
8. Postgres
9. Remote
10. S3

For local state, Terraform stores the workspace states in a directory called terraform.tfstate.d. 
This directory should be treated similarly to local-only terraform.tfstate; 
some teams commit these files to version control, although using a remote backend instead is recommended 
when there are multiple collaborators.

For remote state, the workspaces are stored directly in the configured backend. 
For example, if you use Consul, the workspaces are stored by appending the workspace name 
to the state path. To ensure that workspace names are stored correctly and safely in all backends, 
the name must be valid to use in a URL path segment without escaping.

#List all existing workspace
terraform workspace list

#Create new workspace
terraform workspace new DEV

#Check current workspace
terraform workspace show




https://medium.com/@diogok/terraform-workspaces-and-locals-for-environment-separation-a5b88dd516f5

https://dev.to/sdileep/manage-a-multi-environment-multi-region-infrastructure-on-aws-using-terraform-1p2p
https://github.com/sdileep/tf-multi-region/blob/master/modules/product-a/main.tf

https://github.com/DNXLabs/terraform-aws-backend

https://medium.com/dnx-labs/terraform-remote-states-in-s3-d74edd24a2c4