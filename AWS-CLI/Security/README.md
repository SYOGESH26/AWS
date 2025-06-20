#In this I explain about VPC folder.
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


