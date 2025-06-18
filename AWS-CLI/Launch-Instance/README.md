#In this I explain lauch-instance.sh file.

Commands used :

1.aws ec2 run-instances 'This command is used to launch Instance in AWS-CLI'

  To launch instance we need additional date i.e,
  
  * --image-id
  * --instance-type
  * --key-name 
  * --security-group-ids
  * --subnet-id![2](https://github.com/user-attachments/assets/5099e512-5651-4608-9788-1ee17d344c22)

  * --block-device-mappings '[{"DeviceName":"/dev/sdb","Ebs":{"VolumeType":"gp2","VolumeSize":"25"}]' 
      (if we not mention --block-device-mappings by default it takes 8 GB)

  * If we want give name for the instance use,

    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value="Instance One"}]'

  * If we want userdata (userdata works at the time of first boot omly).

    "--file://filename"

2.aws ec2 describe-instances 'This command is used to describe launching instances AWS'

 If want only specific information use

 * --query 'Reservations[].Instances[].{ID:InstanceID,State:State.Name}'
 * --output table
