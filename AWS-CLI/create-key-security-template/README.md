#In this I explain about create-key-security-template.sh file.

1.Create key pair 

  commands used :

  * aws ec2 create-key-pair \
  * --key-name key \
  * --query "KeyMaterial" \
  * --output text > key.pem
  * chmod 400 key.pem

  This commands help to create key,save in local folder under the name of key.pem .

2.Create security group

  * aws ec2 create-security-group \
  * --group-name security \
  * --description "Allow SSH"

  This commands help to create security group.

3.Allow port 22

  * aws ec2 authorize-security-group-ingress \
  * --group-name security \
  * --protocol tcp \
  * --port 22 \
  * --cidr 0.0.0.0/0 

  This commands help to allow port 22 in the security group.

4.Deny port 22

  * aws ec2 authorize-security-group-egress \
  * --group-name security \
  * --protocol tcp \
  * --port 80 \
  * --cidr 0.0.0.0/0

  This commands help to deny port 80 in the security group .

5.Create launch-Template.

  aws ec2 create-launch-template \
  --launch-template-name template \
  --version-description "v1" \
  --launch-template-data "{
    "ImageId": "ami-042b4708b1d05f512",
    "InstanceType": "t3.micro",
    "SecurityGroupIds": ["sg-060889be8024005e5"],
    "KeyName": "key"
  }'

   This commands help to create launch template

6.Run Instance using launch template.

  aws ec2 run-instances \
  --launch-template LaunchTemplateName=template,Version=1

  This commands help to launch instance without need of much data.
