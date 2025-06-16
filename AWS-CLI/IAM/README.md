#In this I explain about VPC.sh

1.create user

  * aws iam create-user --user-name yogesh

  This creates user in the account

2.create group

  * aws iam create-group --group-name Engineers

  This creates group in the account.

3.Attach policy to group

  * aws iam attach-group-policy \
  * --group name Engineers \
  * --policy-arn arn:aws::iam:aws:policy/AmazonEc2FullAccess 

  This commands help to attach Ec2FullAccess to group.

4.Add user to group.

  * aws iam add-user-to-group \
  * --user-name yogesh \
  * --group-name Engineers
