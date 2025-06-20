#!/bin/bash

vpc=$(aws ec2 describe-vpcs --query 'Vpcs[0].VpcId' --output text)

#Create subnets

aws ec2 create-subnet \
	--vpc-id $vpc \
	--cidr-block 10.0.0.0/24 \
	--availability-zone eu-north-1a \
	--tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet1}]"
aws ec2 create-subnet \
        --vpc-id $vpc \
        --cidr-block 10.0.1.0/24 \
        --availability-zone eu-north-1b \
        --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet2}]"
aws ec2 create-subnet \
        --vpc-id $vpc \
        --cidr-block 10.0.2.0/24 \
        --availability-zone eu-north-1c \
        --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet3}]"
