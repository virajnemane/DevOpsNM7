#To save output of task into variable
register: <variable_name>

#If task failed still want to continue    
ignore_errors: yes

#If require more information about task to troubleshoot
debug: var=service_status.rc