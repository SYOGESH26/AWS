#!/bin/bash

#Creating Launch Template.

aws ec2 create-launch-template \
	--launch-template-name Instance \
	--version-descriotion "v1" \
	--launch-template-data '{
"ImageId": "",
"KeyName": "",
"InstanceType": "",
"SecurityGroupIds": [""],
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
