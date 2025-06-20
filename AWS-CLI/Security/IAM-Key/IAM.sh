#/bin/bash

#Create IAM users

aws iam create-user --user-name yogesh 

#Create Group 

aws iam create-group --group-name Engineers

#Attach policy to group.

aws iam attach-group-policy \
	--group-name Engineers \
	--policy-arn arn:aws::iam:aws:policy/AmazonEc2FullAccess 

#Add user to group

aws iam add-user-to-group \
	--user-name yogesh \
	--group-name Engineers

#Create access keys to user

aws iam create-access-key --user-name yogesh
