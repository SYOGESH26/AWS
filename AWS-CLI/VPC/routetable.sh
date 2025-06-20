#!/bin/bash

vpc=$(aws ec2 describe-vpcs --query "Vpcs[0].VpcId" --output text)
aws ec2 create-route-table \
	--vpc-id $vpc
	RT=$(aws ec2 describe-route-tables --query "RouteTables[0].RouteTableId" --output text)

subnet1=$(aws ec2 describe-subnets --query "Subnets[0].SubnetId" --output text)
subnet2=$(aws ec2 describe-subnets --query "Subnets[*].SubnetId" --output text | tr '\t' '\n' | sort | tail -n 1)
subnet3=$(aws ec2 describe-subnets --query "Subnets[*].SubnetId" --output text | tr '\t' '\n' | sort | tail -n 2) 

#Associate subnets to Routetable

aws ec2 associate-route-table \
	--subnet-id $subnet1 \
	--route-table-id $RT

aws ec2 associate-route-table \
	--subnet-id $subnet2 \
	--route-table-id $RT 

aws ec2 associate-route-table \
	--subnet-id $subnet3 \
	--route-table-id $RT

	
