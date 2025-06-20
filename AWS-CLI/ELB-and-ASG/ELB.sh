#!/bin/bash

#Create application load balancer.

TG=$(aws elbv2 describe-target-groups --query 'TargetGroups[0].TargetGroupArn')

aws elbv2 create-load-balancer \
	--name application-LB \
	--scheme interner-facing \
	--subnets subnet-0c89f0d4893ac3397 subnet-0cbca9cd07db8ddf1 \
	--security-group-ids sg-060889be8024005e5 \ ELB.sh
	--type application \
	--ip-address-type V4

LB=$(aws elbv2 describe-load-balancers --query 'LoadBalancers[0].LoadBalancerArn')

#Create listener 

aws elbv2 create-listener \
	--load-balancr-arn $LB \
	--protocol HTTP \
	--port 80 \
	--default-actions Type=forward,TargetGroupArn $TG
