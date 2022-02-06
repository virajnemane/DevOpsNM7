# In this lab we are going to learn sonarqube setup.

Use t2.medium instance type. (require min 3GB ram)

docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest

