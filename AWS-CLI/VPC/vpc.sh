#!/bin/bash

#In this I create VPC 

aws ec2 create-vpc \
	--region eu-north-1 \
	--cidr-block 10.0.0.0/22 \
	--tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=Vpc}]'
