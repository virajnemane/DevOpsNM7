
Understand directory structure
    Ansible have particular directory structure which help us to manage nodes systmatically.
    It provies flexibility to use same configuration in multiple environment or project, which eventually reduce our work.

Understand group_vars
    group_vars directory will hold yaml file with same group name which you have created in inventory file.
    If you define any variable in this file, it will get applied to all the host mention inside that group.

Understand host_vars
    hosts_vars directory similar to group_vars, but define variable at host level. 
    For example, you have elastic search cluster with 3 nodes, so each node will have different name.
    In this scenario node name need to define under host_vars directory, in that particular hostname.yaml file.

Understand ROLE
    ROLE helps us to make ansible code generic. For example, you have created a ROLE to install WEBSERVER.
    Now this ROLE can be used in multiple project by just providing required variable to the ROLE.
    It help us to reuse the code.

Understanding variable precedence
    Ansible does apply variable precedence, and you might have a use for it. Here is the order of precedence 
    from least to greatest (the last listed variables override all other variables):
    
    1) command line values (for example, -u my_user, these are not variables)
    2) role defaults (defined in role/defaults/main.yml) 1
    3) inventory file or script group vars 2
    4) inventory group_vars/all 3
    5) playbook group_vars/all 3
    6) inventory group_vars/* 3
    7) playbook group_vars/* 3
    8) inventory file or script host vars 2
    9) inventory host_vars/* 3
    10) playbook host_vars/* 3
    11) host facts / cached set_facts 4
    12) play vars
    13) play vars_prompt
    14) play vars_files
    15) role vars (defined in role/vars/main.yml)
    16) block vars (only for tasks in block)
    17) task vars (only for the task)
    18) include_vars
    19) set_facts / registered vars
    20) role (and include_role) params
    21) include params
    22) extra vars (for example, -e "user=my_user")(always win precedence)

Common command line option
# To use custome inventory file
-i <filename>

#To define variable value
-e <variable_name>=<variable_value>
or
--extra-vars "<var1>=<variable_value> <var2>=<variable_value>"