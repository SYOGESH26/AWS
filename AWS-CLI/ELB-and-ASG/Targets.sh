#!/bin/bash

#How to create and register targets.

vpc=$(aws ec2 describe-vpcs --quert 'Vpcs[0].VpcId' --output text)


aws elbv2 create-target-group \
	--name yogesh \
	--target-type instance \
	--protocol HTTP \
	--port 80 \
	--vpc $vpc
	--health-check-protocol HTTP \
	--health-check-path / \
	--health-check-interval 30 \
	--health-check-timeout 10 \
	--healthy-threshold-count 5 \
	--unhealthy-threshold-count 2

TG=$(aws elbv2 describe-target-groups --query 'TargetGroups[0].TargerGroupArn' --output text)
ID=$(aws ec2 describe-instances --query 'Instances[0].InstanceId' --output text) 

#Register targets

aws elbv2 register-targets \
	--target-group-arn $TG \
	--targets ID=$ID
