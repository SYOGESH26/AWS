#!/bin/bash
aws ec2 run-instances \
	--image-id ami-042b4708b1d05f512 \
	--instance-type t3.micro \
	--count 1 \
	--key-name LINUX \
	--subnet-id subnet-0ae8579834cbcaf34 \
	--security-group-ids sg-07171e8fa0eb2f751 \
	--block-device-mappings '[{"DeviceName":"/dev/sdb","Ebs":{"VolumeSize":25,"VolumeType":"gp2"}}]' \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value="Instance One"}]' \
	--query 'Instances[0].InstanceId' \
	--output text
