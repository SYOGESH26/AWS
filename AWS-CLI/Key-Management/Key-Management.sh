#!/bin/bash
#Create kms
ID=$(aws kms create-key \
--description EC2 \
--origin AWS_KMS \
--region eu-north-1 \
--query 'KeyMetadata.KeyId' \
--output text)

echo "ID : $ID"

#Encrypt key

aws kms encrypt \
	--key-id $ID \
	--plaintext fileb://plain.txt \
	--query CiphertextBlob \
	--output text > plain.txt.encripted

#Schedule key-deletion

aws kms schedule-key-deletion \
	--key-id $ID \
	--pending-window-in-days 7

#List KMS

aws kms list-keys

#Cancel deletion

aws kms cancel-key-deletion \
	--key-id $ID



