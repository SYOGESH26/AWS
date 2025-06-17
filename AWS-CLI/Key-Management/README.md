In this I explain about key-Management.sh file 

1.Amazon KMS is used to protect data inside s3, Ec2, EFx ,..etc
2.Those who have key enter into the system others are not allowed.
3.For creating key use following commands:
 
  * aws kms create-key \
  * --description EC2 \
  * --origin AWS_KMS \ (Managed by AWS)
  * --region eu-north-1 \ 
  * --query 'KeyMetadate.KeyId' \ (To show only Keyid in the display)
  * --output text

4.For encrypt use following commands:

  * aws kms encrypt \
  * --key-id keyid \
  * --plaintext fileb://plain.text \
  * --query Ciphertextblob \
  * --output text > plain.text.encripted 

5.For deleting

  * aws kms schedule-key-deletion \
  * --key-id keyid \
  * pending-window-in-days 7 to 30 \

6.For cancelling deletion 

  * aws kms cancel-key-deletion \
  * --key-id keyid \

7.For listing keys

  * aws kms list-keys


