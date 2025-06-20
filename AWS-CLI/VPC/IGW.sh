#!/bin/bash

#Create Internet Gateway.

aws ec2 create-internet-gateway

IGW=$(aws ec2 describe-internet-gateways --query 'InternetGateways[0].InternetGatewayId' --output text)
vpc=$(aws ec2 describe-vpcs --query 'Vpcs[0].VpcId' --output text)
#Attach IGW

aws ec2 attach-internet-gateway \
	--vpc-id $vpc \
	--internet-gateway-id $IGW
