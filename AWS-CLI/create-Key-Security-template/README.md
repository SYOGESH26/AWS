#In this I explain about create-Key-Security-template folder.
--------------------------------------
File 1:- Key-pair.sh
-------------------------------------
  commands used :

  * aws ec2 create-key-pair \  (This basic command to used to create key-pair.)
  * --key-name key \  (In this we suggest name to key pair.)
  * --query "KeyMaterial" \  
  * --output text > key.pem (In this we specify I want key in key.pem file.)
  * chmod 400 key.pem  (We give excute permission to file.)

![key](https://github.com/user-attachments/assets/72d689d4-051a-41be-a0c1-287340e909c6)

---------------------------------------
File 2:-security.sh
---------------------------------------
Commands used:-

  * aws ec2 create-security-group \ (Starting command used to create security-group.)
  * --group-name security \ (In this we give name to security group.)
  * --description "Allow SSH" (In this we provide info about security group.)

  ---Allow port 22

  * aws ec2 authorize-security-group-ingress \ (Command used to allow ports.)
  * --group-name security \
  * --protocol tcp \ (Protocol to allow)
  * --port 22 \ (Specify port number in port.)
  * --cidr 0.0.0.0/0 (Cidr range in this you can specify address to enter to your os)

  This commands help to allow port 22 in the security group.

  ---Deny port 80

  * aws ec2 authorize-security-group-egress \
  * --group-name security \
  * --protocol tcp \
  * --port 80 \
  * --cidr 0.0.0.0/0

  This commands help to deny port 80 in the security group .

![security](https://github.com/user-attachments/assets/31850e47-dd06-4264-935e-851285c992e7)

---------------------------------------------
Outputs:-
---------------------------------------------

 ![out](https://github.com/user-attachments/assets/415eea39-ff32-4a3f-871d-04332c7c2aad)
