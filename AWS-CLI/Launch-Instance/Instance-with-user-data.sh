#!/bin/bash
aws ec2 run-instances \
	--image-id \
	--instance-type \
	--count \
	--key-name \
	--subnet-id \
	--security-group-ids \
        --device-block-mappings '[{"DeviceName":"/dev/sdb","Ebs":{"VolumeSize":25,"VolumeType":"gp2"}}]' \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=linux}]' \
	--associate-public-ip-address \
	--user-data file://userdata

aws ec2 describe-instances \
	--query 'Reservations[].Instances[].{ID:InstanceID,State:State.Name}' \
	--output table
