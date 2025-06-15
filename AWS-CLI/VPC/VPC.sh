
#!/bin/bash

#Create VPC

echo "Creating Vpc"
vpc=$(aws ec2 create-vpc \
	--cidr-block 10.0.0.0/22 \
	--region eu-north-1 \
	--tag-specifications 'ResourceType=Vpc,Tags=[{Key=Name,Value=Public}]' \
	--query '.Vpc.VpcId' --output text)
	
echo "VpcId:$vpc"

#Create subnet

subnet=$(aws ec2 create-subnet \
	--vpc-id $vpc \
	--cidr-block 10.0.0.0/24 \
	--availability-zone eu-north-1a \
	--tag-specifications 'ResourceType=Subnet,Tags=[{Key=Name,Value=Public}]' \
	--query '.Subnet.SubnetId' --output text)

echo "subnet:$subnet"

#Create Route Table.

Routetable=$(aws ec2 create-route-table --vpc-id $vpc --query '.RouteTable.RouteTableId' --output text) 

echo "RouteTableId:$Routetable"

#Associate subnet to Route table

aws ec2 associate-route-table \
	--subnet-id $subnet \
	--route-table-id $Routetable 

#Create Internet Gateway

IGW=$(aws ec2 create-internet-gateway --query '.InternetGateway.InternetGatewayId' --output text) 
echo "IGW:$IGW"

#Attach Internert gateway

aws ec2 attach-internet-gateway \
	--vpc-id $vpc \
	--internet-gateway-id $IGW

#Create Route

aws ec2 create-route \
	--route-table-id $Routetable \
	--destination 0.0.0.0/0 \
	--gateway-id $IGW 
	
