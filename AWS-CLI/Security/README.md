#In this I explain about security folder.
-----------------------------------
Folder: VPC
-----------------------------------
File 1:-vpc.sh
----------------------------------
Commands used:-
* aws ec2 create-vpc (Command is used to create vpc.)
* --region (Specify the region.)
* --cidr-block (Specify the cidr-block range.)
* --tag-specification "ResourceType=vpc,Tags=[{Key=Name,Value=VPC}]" (Give tag to the vpc which is easy to identify to further.)

  ![vpc l1](https://github.com/user-attachments/assets/f2859cb2-a460-4812-8cb9-ddd78b9c757d)

------------------------------------
Output

![vpc 1](https://github.com/user-attachments/assets/85b9e8ea-c090-433e-9aa0-35522d867a81)

------------------------------------
File 2:- subnets.sh
------------------------------------
Commands used:-
* aws ec2 create-subnet (This command is used to create subnet.)
* --vpc-id vpcid (Specify the larger network.)
* cidr-block (Specify the cidr-block.)
* availability-zone (specify the zone.)
* tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet}]" (Give tag to the subnet which is easy to identify to further.)

  ![subnet1](https://github.com/user-attachments/assets/93eda348-aecc-4db4-af4a-d47cd46dc4ec)

---------------------------------------
Output:-

![subnet](https://github.com/user-attachments/assets/00ba4d57-5adf-47a7-b1a1-eb781da52074)

---------------------------------------
---------------------------------------
File 3:- routetable.sh
---------------------------------------
Commands used:-
* aws ec2 create-route-table (This command is used to create routetable.)
* --vpc-id vpcid (This command is used to attach vpc id to routetable.)
* aws ec2 associate-route-table (This command is used to associate subnet to routetable.)
* --subnet-id subnetid (Associate subnet to route table.)
* --route-table-id Routetablearn
  
  ![rt](https://github.com/user-attachments/assets/1bd84bff-1c5c-423e-963e-572ef7817fc9)

  ------------------------------------
  File 4:- IGW.sh
  -----------------------------------
  Commands used:-
  * aws ec2 create-internet-gateway (Create Internet gateway.)
  * aws ec2 attach-internet-gateway (Attach Internet gateway to route table.)
  * --vpc-id vpcid (Attach vpc to internet gatewat)
  * --gateway-id IGWid (Specify Igw)

 ![ig l1](https://github.com/user-attachments/assets/43909049-6b3a-4702-9e6c-410060797268)

 --------------------------------------
 Output

 ![igw](https://github.com/user-attachments/assets/816eb745-04d3-4e13-8d94-89384ba327b1)

 --------------------------------------
 File 5:-route.sh
 --------------------------------------
 Commands used:
 * aws ec2 create-route (Create Route.)
 * --route-table-id routetable
 * --destination 0.0.0.0/0 (Destination to IGW.)
 * --gateway-id Igwid
   
 ![route](https://github.com/user-attachments/assets/1467feab-a662-4ec3-b820-6ed298c090ff)
---------------------------------------
Folder : NACL
---------------------------------------
File:nacl.sh
---------------------------------------
Commands used:-
* aws ec2 create-network-acl (Create network acl.)(NACL which provide security at subnet level)
* --vpc-id vpcid
* aws ec2 create-network-acl-entry (Create network acl entry.)
* --network-acl-id
* --ingress (Which allow any port inside.)
* --egress (Which deny any port inside.)
* --protocol (specify protocol.)
* --port-range From=80,To=80
* --cidr-block 0.0.0.0/0
* --rule-number 100
* --rule-action (Specify allow or deny.)

   ![nacl](https://github.com/user-attachments/assets/af2b6f47-d16a-4017-b7a5-441cb147fb98)

--------------------------------------
Folder:-IAM and Key
--------------------------------------
File:-IAM.sh
--------------------------------------
Commands used:-
* aws iam create-user --user-name username (Create user)
* aws iam create-group --group-name group (Create name)
* aws iam create-role --role-name role (create role)
* aws iam add-user-to-group (Add user to group)
* aws iam attach-user-policy (Attach policy to user)
* policy-arn (Specify policy)

![iam](https://github.com/user-attachments/assets/b1d57853-68c3-487e-9d78-6a2f41013b91)

-------------------------------------
File:-Key.sh
------------------------------------
Commands used:-
* aws kms create-key --description "creating key" (Create key)
* aws kms encrypt (encrypta created key)
* --ket-id keyid
* --plaintext fileb://plain.txt
* --output text
* --query CiphertextBlob > encrypted.b64
* base64 -d encrypted.b64 > encrypted.bin
* aws kmd decrypt (decrypts key)
* --ciphertextblob fileb://encrypted.bin
* --output text
* --query Plaintext | base64 --decode > encrypted.txt


![key encry](https://github.com/user-attachments/assets/ec408bc2-8875-428a-bb86-4abfbf95270a)












  

