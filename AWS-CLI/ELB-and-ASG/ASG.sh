#!/bin/bash

#Create ASG

TG=$(aws elbv2 describe-target-groups --quert 'TargetGroups[0].TargetGroupArn')

aws autoscaling create-autoscaling-group \
	--autoscaling-scaling-group-name ASG \
	--launch-template LaunchTemplateName=Instance,Version=1 \
	--max-size 5 \
	--min-size 2 \
	--desired-capacity 3 \
	--target-group-arns  \
	--vpc-zone-identifer " "
