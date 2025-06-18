* I This I explain about "Instance-with-user-data.sh and launch-instance.sh" files
* First, I explain about Lainch-instance.sh file.
* In that What commands is used ?, What is the use of those commands ? How those commands is help to launch Instance With outputs?
-------------------------------------------------------------
Commands Used:-
-------------------------------------------------------------
* aws run ec2-instances (This is the basic command to launch EC2 Instance in CLI)
* --image-id (This command is used to specify OS in CLI, Whether it is Ubuntu or Red-Hat or something.)
* --instance-type (This command is used to specify instance, Whether it is g-series, m-series, c-series,...etc.)
* --count (How many Instances you need to launch at the time, We need to specify number here.)
* --Key-name (In this stage you need to specify to Key, Which is help to SSH in realtime.)
* --subnet-id (Here, We need to specify subnet group.)
* --security-group-ids (Choose security group,In that you specify about ingress and egress.)
* --block-device-mappings (It is helpful to specify storage, If we not use by default Instance launch with 8GB storage)
* --tag-specifications (It is used to give name of the instance to identify easily when we have so many instances in that region.)
* --query (Is used to extract only certain field)
* --output text (Mention I want output in text)
  
  ![Screenshot 2025-06-18 111636](https://github.com/user-attachments/assets/632e915b-7c60-4712-b572-c48c891cab58)

  ------------------------------------------------------------
  Output of Launch-instance.sh file
  ------------------------------------------------------------

![Screenshot 2025-06-18 113555](https://github.com/user-attachments/assets/176257ec-0ef8-40a6-a89a-00bc72e75eda)

----------------------------------------------------------------
second file :-"Instance-with-user-data.sh"
  -----------------------------------------------------------
  Commands are:-
  
  * Same commands used only extra two commands are added in Instance-with-user-data.sh file.
  * userdata (Userdata file is used at the of first boot.)
  * associate-public-ip-address (Add IPV4 address at the time of launch instance.)

    ![Screenshot 2025-06-18 115703](https://github.com/user-attachments/assets/5fcb5cac-11b4-405a-93d3-ace506c93668)

    --------------------------------------------------------
    Output of Instance-with-user-data.sh
    --------------------------------------------------------

    ![Screenshot 2025-06-18 114749](https://github.com/user-attachments/assets/a209acab-f461-46fa-870c-10b71aa6a48d)
