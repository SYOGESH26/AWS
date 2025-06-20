
#!/bin/bash
aws kms create-key \
	--description "Creating key for demo"

#key encription
key=$(aws kms describe-keys --query 'Keys[0].KeyId' --output text)
aws kms encrypt \
	--key-id $key \
	--plaintext fileb://plaintext.txt \
	--output text \
	--query CiphertextBlob > encrypted.b64

#To decrypt

base64 -d encrypted.b64 > encryted.bin

#kms decryption 

aws kms decrypt \
	--ciphertextBlob fileb://encrypted.bin \
	--output text \
	--query Plaintext | base64 --decode > plaintext.txt
