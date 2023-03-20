# app-runner-httpd-example

# Purpose

This project is an example to deploy static Web contents with httpd container and create a service on AWS App Runner.  

# How to run this project 

1. Create an IAM user and setup AWS Profile
~/.aws/config:
```
[profile testuser]
region=ap-northeast-1
[default]
region = ap-northeast-1
output = json
```
~/.aws/credentials:
[userapprunner]
aws_access_key_id=<Your AWS access key id>
aws_secret_access_key=<Your secret access key>
```

2. Define AWS_PROFILE with an IAM user
```
export AWS_PROFILE=testuser
```

3. Deploy a service with Copilot CLI
```
copilot init
  What would you like to name your application?  example-app
  Which workload type best represents your architecture?  Request-Driven Web Service  (App Runner)
  What do you want to name this service?  example-svc
  Which Dockerfile would you like to use for example-svc?  ./Dockerfile
  Would you like to deploy a test environment? Y
```

4. Open URL deployed by AWS App Runner
```
<service_id>.<service_area>.awsapprunner.com
```

