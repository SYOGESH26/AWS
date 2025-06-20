#!/bin/bash

#In this I use commands How to enable acl and bucket versioning.

aws s3 cp ~/AWS/AWS-CLI/create-bucket.sh s3://27-11-2003/ --acl public-read

aws s3api put-bucket-versioning \
	--bucket 27-11-2003 \
	--versioning-configuration Status=Enabled

#list object versions

aws s3api list-object-versions --bucket 27-11-2003


