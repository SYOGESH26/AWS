#!/bin/bash
aws ec2 run-instances \
	--image-id ami-042b4708b1d05f512 \
	--instance-type t3.micro \
	--count 1 \
	--key-name LINUX \
	--subnet-id subnet-0874547ec9c59a4d6 \
	--security-group-ids sg-060889be8024005e5 \
	--block-device-mappings '[{"DeviceName":"/dev/sdb","Ebs":{"VolumeSize":25,"VolumeType":"gp2"}}]' \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value="Instance One"}]'

aws ec2 describe-instances \
	--query "Reservation[].Instances[].{ID:InstanceID,State:State.Name}" \
	--output table
