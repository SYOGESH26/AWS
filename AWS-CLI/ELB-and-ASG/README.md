#In this I explain about ELB-and-ASG.
-------------------------------------
File 1:-Launch Template
-------------------------------------
Commands used:-
* aws ec2 create-launch-template (Command used to create template.)
* --launch-template-name (Specify name of the template.)
* --version-description (Describe version which help further when use to launch instance from template.)
* --launch-template-data '{
* "ImageId": "imageid" (Specify id which you want to create template.)
* "KeyName": "Key"
* "InstanceType": "Type" (Specify type of instance.)
* "SecurityGroupIds": [" "] (specify security group.)
* }'

  ![temp](https://github.com/user-attachments/assets/0f6b5b43-6d5e-408c-844e-03eb9ae6a5d5)

-----------------------------------
File 2:-Targets.sh
-----------------------------------
Commands used:-
* aws elbv2 create-target-group (Command used to create target.)
* --target-group-name targetname
* --protocol (Specify target type.)
* --port (Spcify port.)
* --vpc-id vpcid (Specify vpc id.)
* --target-type (Specify targets.)
* --health-check-protocol (Specify protocol.)
* --health-check-path (Specify path)

* --health-check-interval (Specify time.)
* --health-check-timeout (Specify timeout in seconds.)
* --healthy-threshold (Specify threshold time.)
* --unhealthy-threshold (Specifu unhealthy threshold.)
* aws ec2 register-targets (Command is used to specify targets.)
* --target-group-arn Id
* --targets ID=instanceid

![target](https://github.com/user-attachments/assets/2e21c9fb-cff4-4140-b228-56fc054f6e37)

------------------------------
File 3:- ELB.sh
------------------------------
Commands used:-
* aws elbv2 create-load-balancer (Create load balncer.)
* --name
* --scheme (Specift scheme.)
* --type (Specify type of load balancer.)
* --ip-address-type (Specify Ip address.)
* --subnets "Specify subnets atleast two."
* --security-group-ids "Specify groups"
* aws elbv2 create-listener (Specify listener)
* --load-balancer-arn Id
* --protocol (Specify protocol.)
* --port (Choose port.)
* --default-actions Type=forward,TargerGroupArn <id>
  
![elb](https://github.com/user-attachments/assets/8388d720-4889-4a85-bcc5-9857f9c82957)

------------------------------
File 4:-ASG.sh
-------------------------------
Commands used:-
* aws autoscaling create-autoscaling-group
* --autoscaling-scaling-group-name
* --launch-template LaunchTemplateName
* --max-size
* --min-size
* --desired-capacity
* --vpc-identifier-zone 
* --target-group-arns 

![ASG](https://github.com/user-attachments/assets/89cc5530-0987-486e-a670-fad6145efae1)


