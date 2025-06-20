#In this I create NACL for subnet.
#!/bin/bash
vpc=$(aws ec2 describe-vpcs --query 'Vpcs[0].VpcId' --output text)
aws ec2 create-network-acl \ 
	--vpc-id $vpc

NACL=$(aws ec2 describe-network-acls --query 'NetworkAcls[0].NetworkAclId' --output text)

aws ec2 create-network-acl-entry \
	--network-acl-id $NACL \
	--ingress \
	--protocol tcp \
	--rule-number 100 \
	--port-range From=80,To=80 \
	--cidr-block 0.0.0.0/0 \
	--rule-action allow
