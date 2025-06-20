#!/bin/bash

#Create ASG

TG=$(aws elbv2 describe-target-groups --quert 'TargetGroups[0].TargetGroupArn')

aws autoscaling create-autoscaling-group \
	--autoscaling-group-name ASG \
	--launch-template LaunchTemplateName=Instance,Version=1 \
	--max-size 5 \
	--min-size 2 \
	--desired-capacity 3 \
	--target-group-arns arn:aws:elasticloadbalancing:region:acct-id:targetgroup/my-target-group/abc1234567890 \
	--vpc-zone-identifer "subnet-0c89f0d4893ac3397 subnet-0cbca9cd07db8ddf1"
