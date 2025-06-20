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
 



    




  

  


