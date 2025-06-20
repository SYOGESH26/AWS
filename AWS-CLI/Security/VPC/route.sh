#!/bin/bash
#Create route

RT=$(aws ec2 describe-route-tables --query 'RouteTables[0].RouteTableId' --output text)
IGW=$(aws ec2 describe-internet-gateways --query 'InternetGateways[0].InternetGatewayId' --output text)

aws ec2 create-route \
	--route-table-id $RT \
	--destination-cidr-block 0.0.0.0/0 \
	--gateway-id $IGW
