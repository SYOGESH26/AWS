#!/bin/bash

#Create bucket

aws s3api create-bucket \
	--bucket ind-2025 \
	--region eu-north-1 \
	--create-bucket-configuration LocationConstraint=eu-north-1 

#Upload file

aws s3 cp ~/AWS/AWS-CLI s3://ind-2025/ --recursive

#List file

aws s3 ls s3://ind-2025/

#Remove file

aws s3 rm s3://ind-2025/AWS-CLI/Launch-instances/userdata

#Remove folder

aws s3 rm s3://ind-2025/AWS-CLI --recursive

#Give public access to the file.

aws s3 cp ~/AWS/AWS-CLI/Launch-instances/userdata s3://ind-2025/ --acl public-read

#Enable versioning 

aws s3api put-bucket-versioning \
	--bucket ind-2025 \
	--versioning-configuration status=enabled

#Lifecycle policy

aws s3api put-bucket-lifecycle-configuration \
	--bucket ind-2025 \
	--lifcycle-configuration file://filename.json


