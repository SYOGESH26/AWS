#In this I create S3 Bucket
#!/bin/bash
aws s3api create-bucket \
	--bucket 27-11-2003 \
	--region eu-north-1 \
	--create-bucket-configuration LocationConstraint=eu-north-1
