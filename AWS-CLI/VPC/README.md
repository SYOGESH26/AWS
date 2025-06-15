#In this I explain VPC.sh file.

1.Create VPC.

  Commands used:

  * aws ec2 create-vpc \
  * --cidr-block 10.0.0.0/22 \
  * --region $REGION \
  * --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=Public}]' \
  * --query 'Vpc.VpcId' --output text

  This commands help to create vpc.

2.Create Subnet.

  Commands used:

  * aws ec2 create-subnet \
  * --vpc-id $vpcid \
  * --cidr-block 10.0.0.0/24 \
  * --availability-zone ${REGION}a \
  * --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=PublicSubnet}]' \
  * --query 'Subnet.SubnetId' --output text)

  This commands help to create subnet.

3.Create RouteTable.

  Commands used:

  * aws ec2 create-route-table \
  * --vpc-id $vpcid \
  * --query 'RouteTable.RouteTableId' --output text)

  This commands help to create RouteTable.

4.Associate subnet to route.

  Commands used :

  * aws ec2 associate-route-table \
  * --subnet-id $subnet_id \
  * --route-table-id $route_table_id

  This commands help to associate subnets to routetable.

5.Create Internet gateway.

  * aws ec2 create-internet-gateway

  This command help to create internet gateway.

6.Attach Internet gateway.

  * aws ec2 attach-internet-gateway \
  * --vpc-id $vpc \
  * --internet-gateway-id $gatewayid \

  This commands help to attach internet gateway.

7.Create Route.

  * aws ec2 create-route \
  * --route-table-id $routetable \
  * destination 0.0.0.0/0 \
  * --gateway-id $gatewayid

  This commands help to create route.

