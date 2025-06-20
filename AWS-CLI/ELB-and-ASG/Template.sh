#!/bin/bash

#Creating Launch Template.

aws ec2 create-launch-template \
	--launch-template-name Instance \
	--version-descriotion "v1" \
	--launch-template-data '{
"ImageId": "ami-042b4708b1d05f512",
"KeyName": "LINUX",
"InstanceType": "t3.micro",
"SecurityGroupIds": ["sg-060889be8024005e5"],
"BlockDeviceMappings": [
{
	"DeviceName": "/dev/sbd",
	"Ebs":
	{
		"VolumeType": "gp2",
		"VolumeSize": 25
	} 
}
]'
