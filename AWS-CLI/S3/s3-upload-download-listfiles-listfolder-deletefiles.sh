#!/bin/bash

#Command used how to upload a file to S3 bucket.

aws s3 cp ~/AWS/AWS-CLI/S3/create-bucket.sh s3://27-11-2003/

#Command used how to upload a folder to s3 bucket.

aws s3 cp ~/AWS/AWS-CLI/ s3://27-11-2003/ --recursive

#Command used how to list files in S3 bucket.

aws s3 ls s3://27-11-2003/

#Command used to download file from S3 bucket to local folder.

aws s3 cp s3://27-11-2003/create-bucket.sh ~/AWS/AWS-CLI/

#Command used to remove file from bucket.

aws s3 rm s3/27-11-2003/create-bucket.sh

#Command used to remove folder from bucket.

aws s3 rm s3://27-11-2003/AWS-CLI/ --recursive
