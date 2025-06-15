#!/bin/bash
#Create keypair

aws ec2 create-key-pair \
	--key-name key \
	--query "keyMaterial" \
	--output text > key.pem

chmod 400 key.pem

#Create Security group

aws ec2 create-security-group \
	--group-name security \
	--description "Allow SSH"

#Allow port 22

aws ec2 authorize-security-group-ingress \
	--group-name security \
	--protocol tcp \
	--port 22 \
	--cidr 0.0.0.0/0

#deny port 80

aws ec2 authorize-security-group-egress \
	--group-name security \
	--protocol tcp \
	--port 80 \
	--cidr 0.0.0.0/0

#Create template

aws ec2 create-launch-template \
	--launch-template-name template \
	--versioning-description "v1"\
	--launch-template-data '{
"ImageId": "ami-042b4708b1d05f512",
"InstanceType": "t3.micro",
"SecurityGroupIds": ["sg-060889be8024005e5"],
"KeyName"= "LINUX"
}'

#Launch Instance From Launch Template
aws ec2 run-instances \
	--launch-template LaunchTemplateName=template,Version=1
