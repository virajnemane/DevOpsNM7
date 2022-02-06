Note - We are using admin user on Control Node as well as Manage Node.

Before Manage Node controlled by Control Node, there is only one pre-requisite we need to fullfill,
and that is authentication.

Control Node should able to reach and authenticate with Manage Node.

You can do this with username and passowrd or with password less authentication.
Password less authentication is more secure and most preferred way so we are going to use that.

Follow below steps for password less authentication.
Login on Control Node with admin user
--------------------------------------
ssh-keygen -t rsa
    It will ask 3-4 things, just press enter.

ssh-copy-id <IP_OF_ManageNode>
    It will ask admin user password of Manage Node, provide it.
    
Above two command will create ssh key and establish password authentication between Control Node and Manage Node.
To verify that execute below command.
ssh <IP_OF_ManageNode>
    You will get logged in to Manage Node. Execute exit command and come back to Manage Node.

But to test this connection at ansible level you need to follow below process.
1) Set ansible.cfg
    This is needed only when you start from scratch. If you already have ansible.cfg in place then skip this step.

2) configure hosts file
    Whenever you have new Manage Node, you need to do this. Make below entry in hosts file for new Manage Node.

webserver ansible_host=<IP_ManageNode> ansible_host=admin

3) Check connectivity at ansibel level
After adding Manage Node in hosts file, execute below command to confirm connectivity at ansible level.

ansible -m ping webserver
    This will show you output in green font with success message.